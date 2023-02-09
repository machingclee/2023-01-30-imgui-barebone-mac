#pragma once
#include "config/global.h"
#include "menu.h"
#include "imguipp.h"
#include "settings.h"
#include <string>
#include <vector>
#include "utils/web_utils.h"
#include "utils/get_file_next_digit.h"
#include <thread>
#include <sstream>

void Menu::Render() {
    ImGui::Columns(2);
    ImGui::SetColumnOffset(1, 230);

    {
        // Left side

        static ImVec4 active = imguipp::to_vec4(41, 40, 41, 255);
        static ImVec4 inactive = imguipp::to_vec4(31, 30, 31, 255);

        ImGui::PushStyleColor(ImGuiCol_Button, Settings::Tab == 1 ? active : inactive);
        if (ImGui::Button("Camera Selection", ImVec2(230 - 15, 41))) {
            Settings::Tab = 0;
        }

        ImGui::Spacing();
        ImGui::PushStyleColor(ImGuiCol_Button, Settings::Tab == 2 ? active : inactive);
        if (ImGui::Button("Eye Tracking Backend", ImVec2(230 - 15, 41))) {
            Settings::Tab = 1;
        }

        ImGui::PopStyleColor(2);

        ImGui::SetCursorPosY(ImGui::GetWindowHeight() - 70);
        imguipp::center_text_ex(Global::company_name, 230, 1, false);
    }

    ImGui::NextColumn();

    // Right side
    {
        if (Settings::Tab == 0) {
            static int device_counts = 0;
            static int device_enumeration_complete = false;
            static bool camera_started = false;
            static std::vector<std::string> items;

            if (!device_enumeration_complete) {
                cv::VideoCapture camera;

                while (true) {
                    if (!camera.open(device_counts)) {
                        print("device_counts: ", device_counts);
                        device_enumeration_complete = true;
                        break;
                    }
                    std::string device_name = std::string("Device ") + std::to_string(device_counts);
                    items.push_back(device_name);
                    device_counts++;
                }
                camera.release();
            }

            static bool camera_init_failed = device_counts == 0;
            static int selectedIndex = 0;
            static const char* current_item = items[selectedIndex].c_str();

            if (camera_init_failed) {
                ImGui::Text("Camera failed to properly initialize.");
            } else {

                if (ImGui::BeginCombo("##combo", current_item)) // The second parameter is the label previewed before opening the combo.
                {
                    for (int n = 0; n < items.size(); n++) {
                        bool is_selected = (current_item == items[n]); // You can store your selection however you want, outside or inside your objects
                        if (ImGui::Selectable(items[n].c_str(), is_selected)) {
                            current_item = items[n].c_str();
                            selectedIndex = n;
                        }

                        if (is_selected) {
                            ImGui::SetItemDefaultFocus(); // You may set the initial focus when opening the combo (scrolling + for keyboard navigation support)
                        }
                    }
                    ImGui::EndCombo();
                }

                if (ImGui::Button("Start Camera", ImVec2(200, 35))) {
                    try {
                        CaptureUtils::start_webcam_capture(selectedIndex);
                    } catch (std::exception& e) {
                        std::cout << e.what() << std::endl;
                    }
                }
            }
            static bool screen_capture_started = false;
            static std::thread screen_cap_thread;
            static std::atomic<bool> atomic_stop_screen_cap_flag;

            if (!screen_capture_started) {
                if (ImGui::Button("Start Screen Capture", ImVec2(200, 35))) {
                    screen_cap_thread = std::thread(
                        []() {
                            std::string next_digit = get_file_next_digit(".", "avi");
                            std::ostringstream s;
                            s << Global::out_video_prefix
                              << "_"
                              << next_digit
                              << "."
                              << "avi";
                            CaptureUtils::start_screen_capture(s.str(), &atomic_stop_screen_cap_flag);
                        });
                    screen_capture_started = true;
                }
            } else {
                if (ImGui::Button("Stop Screen Capture", ImVec2(200, 35))) {
                    atomic_stop_screen_cap_flag = true;
                    screen_cap_thread.join();
                    screen_capture_started = false;
                    atomic_stop_screen_cap_flag = false;
                }
            }
        }

        else if (Settings::Tab == 1) {
            static bool started = false;
            if (!started) {
                if (ImGui::Button("Start Local Server", ImVec2(200, 35))) {
                    WebUtils::start_web_server_thread();
                    started = true;
                }
            } else {
                if (ImGui::Button("Stop Local Server", ImVec2(200, 35))) {
                    WebUtils::stop_web_server_thread();
                    started = false;
                }
            }
        }
    }
}

void Menu::Theme() {
    ImGuiStyle* style = &ImGui::GetStyle();

    style->WindowBorderSize = 0;
    style->WindowTitleAlign = ImVec2(0.5, 0.5);
    style->WindowMinSize = ImVec2(900, 430);

    style->FramePadding = ImVec2(8, 6);

    style->Colors[ImGuiCol_TitleBg] = ImColor(255, 101, 53, 255);
    style->Colors[ImGuiCol_TitleBgActive] = ImColor(255, 101, 53, 255);
    style->Colors[ImGuiCol_TitleBgCollapsed] = ImColor(0, 0, 0, 130);

    style->Colors[ImGuiCol_Button] = ImColor(31, 30, 31, 255);
    style->Colors[ImGuiCol_ButtonActive] = ImColor(41, 40, 41, 255);
    style->Colors[ImGuiCol_ButtonHovered] = ImColor(41, 40, 41, 255);

    style->Colors[ImGuiCol_Separator] = ImColor(70, 70, 70, 255);
    style->Colors[ImGuiCol_SeparatorActive] = ImColor(76, 76, 76, 255);
    style->Colors[ImGuiCol_SeparatorHovered] = ImColor(76, 76, 76, 255);

    style->Colors[ImGuiCol_FrameBg] = ImColor(37, 36, 37, 255);
    style->Colors[ImGuiCol_FrameBgActive] = ImColor(37, 36, 37, 255);
    style->Colors[ImGuiCol_FrameBgHovered] = ImColor(37, 36, 37, 255);

    style->Colors[ImGuiCol_Header] = ImColor(0, 0, 0, 0);
    style->Colors[ImGuiCol_HeaderActive] = ImColor(0, 0, 0, 0);
    style->Colors[ImGuiCol_HeaderHovered] = ImColor(46, 46, 46, 255);
}