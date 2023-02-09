#pragma once
#include "torch/torch.h"
// #include <Windows.h>
#include <iostream>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/videoio.hpp>
#include <string>

namespace CaptureUtils {
#if defined(__WIN32__)
class hwnd2Mat {
public:
    hwnd2Mat(HWND hwindow, float scale = 1);
    virtual ~hwnd2Mat();
    virtual void read();
    cv::Mat image;

private:
    HWND hwnd;
    HDC hwindowDC, hwindowCompatibleDC;
    int height, width, srcheight, srcwidth;
    HBITMAP hbwindow;
    BITMAPINFOHEADER bi;
};
#endif

int start_webcam_capture(int camera_index = 0);
int start_screen_capture(std::string filename = "./desktop_capture001.avi", std::atomic<bool>* atomic_stop_screen_cap_flag = nullptr);
} // namespace CaptureUtils
