set(
  SOURCE
  "../include/utils/capture_utils.h"
  "../include/utils/common.h"
  "../include/utils/web_utils.h"
  # "../include/utils/win_reg.h"
  utils/capture_utils.cpp
  utils/common.cpp
  utils/web_utils.cpp
  # utils/register_protocol.cpp
)


add_library(${UTILS_LIB} ${SOURCE}) 
# target_link_libraries(${UTILS_LIB} PUBLIC ${TORCH_LIBRARIES} ${OpenCV_LIBS} ${WEB_SERVER_LIB} ${CONFIG})
find_package(Torch REQUIRED)

target_link_libraries(${UTILS_LIB} PUBLIC mongoose ${TORCH_LIBRARIES} ${OpenCV_LIBS} ${CONFIG})
target_include_directories(${UTILS_LIB} PUBLIC ../include)
