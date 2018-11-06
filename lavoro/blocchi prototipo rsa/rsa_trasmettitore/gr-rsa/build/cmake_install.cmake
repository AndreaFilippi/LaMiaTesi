# Install script for directory: /home/lino/Desktop/tirocinio/RSA/rsa_trasmettitore/gr-rsa

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/rsa" TYPE FILE FILES "/home/lino/Desktop/tirocinio/RSA/rsa_trasmettitore/gr-rsa/cmake/Modules/rsaConfig.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/lino/Desktop/tirocinio/RSA/rsa_trasmettitore/gr-rsa/build/include/rsa/cmake_install.cmake")
  include("/home/lino/Desktop/tirocinio/RSA/rsa_trasmettitore/gr-rsa/build/lib/cmake_install.cmake")
  include("/home/lino/Desktop/tirocinio/RSA/rsa_trasmettitore/gr-rsa/build/swig/cmake_install.cmake")
  include("/home/lino/Desktop/tirocinio/RSA/rsa_trasmettitore/gr-rsa/build/python/cmake_install.cmake")
  include("/home/lino/Desktop/tirocinio/RSA/rsa_trasmettitore/gr-rsa/build/grc/cmake_install.cmake")
  include("/home/lino/Desktop/tirocinio/RSA/rsa_trasmettitore/gr-rsa/build/apps/cmake_install.cmake")
  include("/home/lino/Desktop/tirocinio/RSA/rsa_trasmettitore/gr-rsa/build/docs/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/lino/Desktop/tirocinio/RSA/rsa_trasmettitore/gr-rsa/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
