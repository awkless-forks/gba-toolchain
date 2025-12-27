# SPDX-FileCopyrightText: 2021-2025 gba-toolchain contributors
# SPDX-FileCopyrightText: 2025 Jason Pena <jasonpena@awkless.com>
# SPDX-License-Identifier: Zlib

add_subdirectory("${CMAKE_SYSTEM_LIBRARY_PATH}/rom" "${CMAKE_BINARY_DIR}/lib/rom" EXCLUDE_FROM_ALL)
