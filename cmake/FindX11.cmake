# On Windows/MinGW, GTK2 uses the Win32 GDI backend and does not need X11.
# Satisfy find_package(X11 REQUIRED) with empty variables so the build
# succeeds without linking against a non-existent X11 library.
if(WIN32 OR MINGW)
    set(X11_FOUND TRUE)
    set(X11_INCLUDE_DIR "")
    set(X11_LIBRARIES "")
else()
    # Delegate to CMake's built-in FindX11 module on all other platforms.
    include(${CMAKE_ROOT}/Modules/FindX11.cmake)
endif()
