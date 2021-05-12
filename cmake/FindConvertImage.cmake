find_library(CONVERT_IMAGE_LIB_PATH NAMES ConvertImage PATHS /usr/local/lib)

if (CONVERT_IMAGE_LIB_PATH)
    set(CONVERT_IMAGE_FOUND TRUE)
endif()