#pragma once
#include "utils/capture_utils.h"
#include "opencv2/opencv.hpp"
#include <iostream>
#include <ApplicationServices/ApplicationServices.h>
#include <CoreGraphics/CGGeometry.h>

using namespace cv;

namespace CaptureUtils {

#if defined(__WIN32__)
hwnd2Mat::hwnd2Mat(HWND hwindow, float scale) {
    hwnd = hwindow;
    hwindowDC = GetDC(hwnd);
    hwindowCompatibleDC = CreateCompatibleDC(hwindowDC);
    SetStretchBltMode(hwindowCompatibleDC, COLORONCOLOR);

    RECT windowsize; // get the height and width of the screen
    GetClientRect(hwnd, &windowsize);

    srcheight = windowsize.bottom;
    srcwidth = windowsize.right;
    height = (int)(windowsize.bottom * scale);
    width = (int)(windowsize.right * scale);

    image.create(height, width, CV_8UC4);

    // create a bitmap
    hbwindow = CreateCompatibleBitmap(hwindowDC, width, height);
    bi.biSize = sizeof(BITMAPINFOHEADER); // http://msdn.microsoft.com/en-us/library/windows/window/dd183402%28v=vs.85%29.aspx
    bi.biWidth = width;
    bi.biHeight = -height; // this is the line that makes it draw upside down or not
    bi.biPlanes = 1;
    bi.biBitCount = 32;
    bi.biCompression = BI_RGB;
    bi.biSizeImage = 0;
    bi.biXPelsPerMeter = 0;
    bi.biYPelsPerMeter = 0;
    bi.biClrUsed = 0;
    bi.biClrImportant = 0;

    // use the previously created device context with the bitmap
    SelectObject(hwindowCompatibleDC, hbwindow);
    read();
};

void hwnd2Mat::read() {
    // copy from the window device context to the bitmap device context
    StretchBlt(hwindowCompatibleDC, 0, 0, width, height, hwindowDC, 0, 0, srcwidth, srcheight, SRCCOPY); // change SRCCOPY to NOTSRCCOPY for wacky colors !
    GetDIBits(hwindowCompatibleDC, hbwindow, 0, height, image.data, (BITMAPINFO*)&bi, DIB_RGB_COLORS);   // copy from hwindowCompatibleDC to hbwindow
};

hwnd2Mat::~hwnd2Mat() {
    // avoid memory leak
    DeleteObject(hbwindow);
    DeleteDC(hwindowCompatibleDC);
    ReleaseDC(hwnd, hwindowDC);
};
#endif

int start_screen_capture(std::string filename, std::atomic<bool>* atomic_stop_screen_cap_flag) {
#if defined(__APPLE__)
    size_t width = CGDisplayPixelsWide(CGMainDisplayID());
    size_t height = CGDisplayPixelsHigh(CGMainDisplayID());

    Mat im(cv::Size(width, height), CV_8UC4);
    Mat bgrim(cv::Size(width, height), CV_8UC3);
    Mat resizedim(cv::Size(width, height), CV_8UC3);

    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef contextRef = CGBitmapContextCreate(
        im.data, im.cols, im.rows,
        8, im.step[0],
        colorSpace, kCGImageAlphaPremultipliedLast | kCGBitmapByteOrderDefault);

    cv::Mat ui(40, 400, CV_8UC3, cv::Scalar(0, 130, 0));
    cv::putText(ui, "Press Esc to stop capturing", cv::Point(30, 30), cv::FONT_HERSHEY_COMPLEX, 0.7,
                cv::Scalar(0, 0, 255), 1);

    cv::VideoWriter writer;
    int codec = cv::VideoWriter::fourcc('M', 'J', 'P', 'G');
    double fps = 10.0;
    writer.open(filename, codec, fps, cv::Size(width, height), true);
    // check if we succeeded
    if (!writer.isOpened()) {
        std::cerr << "Could not open the output video file for write\n";
        return -1;
    }

    while (!*atomic_stop_screen_cap_flag) {
        CGImageRef imageRef = CGDisplayCreateImage(CGMainDisplayID());
        CGContextDrawImage(
            contextRef,
            CGRectMake(0, 0, width, height),
            imageRef);
        cvtColor(im, bgrim, cv::COLOR_RGBA2BGR);
        resize(bgrim, resizedim, cv::Size(), 0.5, 0.5);
        writer << bgrim;
        // imshow("desktop capture", resizedim);
        CGImageRelease(imageRef);
        int key = cv::waitKey(5);
        if (key == 27) {
            break; // esc
        }
    }

    std::cout << "screen capture done" << std::endl;
    cv::destroyAllWindows();
#endif

#if defined(__WIN32__)
    cv::Mat ui(40, 400, CV_8UC3, cv::Scalar(0, 130, 0));
    cv::putText(ui, "Press Esc to stop capturing", cv::Point(30, 30), cv::FONT_HERSHEY_COMPLEX, 0.7,
                cv::Scalar(0, 0, 255), 1);
    cv::Mat bgrImg;
    hwnd2Mat capDesktop(GetDesktopWindow());

    cv::VideoWriter writer;
    int codec = cv::VideoWriter::fourcc('M', 'J', 'P', 'G');
    double fps = 10.0;
    writer.open(filename, codec, fps, capDesktop.image.size(), true);
    // check if we succeeded
    if (!writer.isOpened()) {
        std::cerr << "Could not open the output video file for write\n";
        return -1;
    }

    while (true) {
        capDesktop.read();
        cvtColor(capDesktop.image, bgrImg, cv::COLOR_BGRA2BGR);
        writer << bgrImg;
        imshow("desktop capture", ui);
        int key = cv::waitKey(5);

        if (key == 27) {
            break; // esc
        }
    }

    std::cout << "screen capture done" << std::endl;
#endif
    return 0;
}

int start_webcam_capture(int camera_index) {
    cv::VideoCapture cap(camera_index);

    if (!cap.isOpened()) {
        std::cout << "Cannot open camera\n";
        return 1;
    }

    cv::Mat frame;
    cv::Mat gray;

    while (true) {
        bool ret = cap.read(frame);
        cv::cvtColor(frame, gray, cv::COLOR_BGR2GRAY);
        imshow("camera", frame);

        int key = cv::waitKey(5);
#if defined(__WIN32__)
        if (cv::getWindowProperty("camera", cv::WND_PROP_AUTOSIZE) == -1) {
#else
        if (key == 27) {
#endif
            break; // esc
        }
    }
#if defined(__APPLE__)
    cv::destroyAllWindows();
#endif
    return 0;
}
} // namespace CaptureUtils