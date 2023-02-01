#pragma once
#include "torch/torch.h"
// #include <Windows.h>
#include <iostream>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/videoio.hpp>
#include <string>

namespace CaptureUtils {
int start_webcam_capture(int camera_index = 0);
int start_screen_capture(std::string filename = "./desktop_capture001.avi");
} // namespace CaptureUtils
