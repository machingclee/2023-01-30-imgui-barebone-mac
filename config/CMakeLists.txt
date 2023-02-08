set(
  SOURCES 
  "include/config/global.h"
  "src/global.cpp"
)
add_library(${CONFIG} ${SOURCES})
target_include_directories(${CONFIG} PUBLIC include)