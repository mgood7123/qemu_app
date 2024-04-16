cmake_minimum_required(VERSION 3.12)

project(qemu_app C CXX)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_POLICY_DEFAULT_CMP0074 NEW)
set(CMAKE_POLICY_DEFAULT_CMP0075 NEW)

set(BUILD_SHARED_LIBS OFF CACHE BOOL "" FORCE)

include(./build_root.cmake)

build_root_init(${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_BINARY_DIR}/BUILD_ROOT)

if (BUILD_ROOT_OS__WIN32 OR BUILD_ROOT_OS__MSYS)
    # win/msys
    #
    build_root_add_makefile_package(${CMAKE_CURRENT_SOURCE_DIR}/qemu . qemu
        "" # no extra c flags
        "" # no extra cxx flags
        "
            --enable-sdl --enable-gtk --disable-user --target-list=x86_64-softmmu --enable-whpx
        " # extra configure arguments
    )
    find_program(CYGPATH_EXE NAMES cygpath.exe)
    if (CYGPATH_EXE)
      execute_process(COMMAND "${CYGPATH_EXE}" "-u" "${LLVM_BUILD_ROOT__ROOTFS}/lib" OUTPUT_VARIABLE CYG_LLVM_BUILD_ROOT__ROOTFS_LIB)
      string(STRIP ${CYG_LLVM_BUILD_ROOT__ROOTFS_LIB} CYG_LLVM_BUILD_ROOT__ROOTFS_LIB)
    endif()
else()
    # unix/cygwin
    #
    build_root_add_makefile_package(${CMAKE_CURRENT_SOURCE_DIR}/qemu . qemu
        "" # no extra c flags
        "" # no extra cxx flags
        "
            --enable-sdl --enable-gtk --disable-user --target-list=x86_64-softmmu
        " # extra configure arguments
    )
endif()
