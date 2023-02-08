#include "utils/list_dir.h"

std::vector<std::string> list_dir(std::string directory_path) {
    std::vector<std::string> file_paths;

    for (const auto& entry : fs::directory_iterator(directory_path)) {
        file_paths.push_back(entry.path());
    }
    return file_paths;
}
