INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_RSA rsa)

FIND_PATH(
    RSA_INCLUDE_DIRS
    NAMES rsa/api.h
    HINTS $ENV{RSA_DIR}/include
        ${PC_RSA_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    RSA_LIBRARIES
    NAMES gnuradio-rsa
    HINTS $ENV{RSA_DIR}/lib
        ${PC_RSA_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(RSA DEFAULT_MSG RSA_LIBRARIES RSA_INCLUDE_DIRS)
MARK_AS_ADVANCED(RSA_LIBRARIES RSA_INCLUDE_DIRS)

