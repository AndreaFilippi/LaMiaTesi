INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_RSARX rsaRx)

FIND_PATH(
    RSARX_INCLUDE_DIRS
    NAMES rsaRx/api.h
    HINTS $ENV{RSARX_DIR}/include
        ${PC_RSARX_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    RSARX_LIBRARIES
    NAMES gnuradio-rsaRx
    HINTS $ENV{RSARX_DIR}/lib
        ${PC_RSARX_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(RSARX DEFAULT_MSG RSARX_LIBRARIES RSARX_INCLUDE_DIRS)
MARK_AS_ADVANCED(RSARX_LIBRARIES RSARX_INCLUDE_DIRS)

