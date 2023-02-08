#pragma once

#include <string>
#include <iostream>
#include <filesystem>
#include <vector>

namespace fs = std::filesystem;

std::vector<std::string> list_dir(std::string directory_path);
