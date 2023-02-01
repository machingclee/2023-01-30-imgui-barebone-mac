#pragma once
#include "utils/capture_utils.h"
#include "opencv2/opencv.hpp"
#include <iostream>
#include <ApplicationServices/ApplicationServices.h>
#include <CoreGraphics/CGGeometry.h>

using namespace cv;

namespace CaptureUtils {

int start_screen_capture(std::string filename) {
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

    while (true) {
        CGImageRef imageRef = CGDisplayCreateImage(CGMainDisplayID());
        CGContextDrawImage(
            contextRef,
            CGRectMake(0, 0, width, height),
            imageRef);
        cvtColor(im, bgrim, cv::COLOR_RGBA2BGR);
        resize(bgrim, resizedim, cv::Size(), 0.5, 0.5);
        writer << bgrim;
        imshow("desktop capture", resizedim);
        CGImageRelease(imageRef);
        int key = cv::waitKey(5);
        if (key == 27) {
            break; // esc
        }
    }

    std::cout << "screen capture done" << std::endl;
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
        if (key == 27 || cv::getWindowProperty("camera", cv::WND_PROP_AUTOSIZE) == -1) {
            break; // esc
        }
    }
    return 0;
}
} // namespace CaptureUtils