#include <string>
#include <regex>
#include <algorithm>
#include <sstream>
#include <iomanip>
#include "utils/split.h"
#include "utils/list_dir.h"

std::string z_fill(int n, int numberOfLeadingZeros = 0);
std::string get_file_next_digit(std::string dir, std::string file_ext = "avi");