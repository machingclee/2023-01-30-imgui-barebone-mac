#include "utils/get_file_next_digit.h"

const char path_sep =
#ifdef _WIN32
    '\\';
#else
    '/';
#endif

std::string z_fill(int n, int numberOfLeadingZeros) {
    std::ostringstream s;
    s << std::setw(numberOfLeadingZeros) << std::setfill('0') << n;
    return s.str();
}

std::string get_file_next_digit(std::string dir, std::string file_ext) {
    std::string sep{path_sep};
    std::regex number_regex("(\\d+)(?=\\." + file_ext + ")");
    std::vector<std::string> file_paths = list_dir(dir);
    std::vector<int> integers;
    for (std::string& file_path : file_paths) {
        std::vector<std::string> results = split(file_path, sep);
        std::string file_name = results.back();
        std::sregex_iterator current_match(file_name.begin(), file_name.end(), number_regex);
        std::sregex_iterator lastMatch;
        while (current_match != lastMatch) {
            std::smatch match = *current_match;
            int num = std::stoi(match.str());
            integers.push_back(num);
            current_match++;
        }
    }
    if (integers.size() > 0) {
        std::sort(integers.begin(), integers.end());
        std::string next_number = z_fill(integers[integers.size() - 1] + 1, 10);
        return next_number;
    } else {
        return z_fill(0, 10);
    }
}