# SPDX-FileCopyrightText: 2021-2025 gba-toolchain contributors
# SPDX-FileCopyrightText: 2025 Jason Pena <jasonpena@awkless.com>
# SPDX-License-Identifier: Zlib

include(FetchContent)

if(EXISTS "${CMAKE_SYSTEM_LIBRARY_PATH}/xilefianlib/CMakeLists.txt" OR EXISTS "${CMAKE_BINARY_DIR}/lib/xilefianlib/CMakeLists.txt")
    add_subdirectory("${CMAKE_SYSTEM_LIBRARY_PATH}/xilefianlib" "${CMAKE_BINARY_DIR}/lib/xilefianlib" EXCLUDE_FROM_ALL)
else()
    FetchContent_Declare(xilefianlib DOWNLOAD_EXTRACT_TIMESTAMP ON
        SOURCE_DIR "${CMAKE_SYSTEM_LIBRARY_PATH}/xilefianlib"
        GIT_REPOSITORY "https://github.com/felixjones/xilefianlib.git"
        GIT_TAG "main"
    )

    FetchContent_MakeAvailable(xilefianlib)
endif()
