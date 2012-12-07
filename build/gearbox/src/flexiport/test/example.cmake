CMAKE_MINIMUM_REQUIRED (VERSION 2.4)

PROJECT (FlexiPortExample)

INCLUDE_DIRECTORIES (/home/dave/ros/clam/install)

ADD_EXECUTABLE (flexiport_serial_example serial_example.cpp)
TARGET_LINK_LIBRARIES (flexiport_serial_example flexiport)
SET_TARGET_PROPERTIES (flexiport_serial_example PROPERTIES
                       LINK_FLAGS "-L/home/dave/ros/clam/install/lib/gearbox"
                       INSTALL_RPATH "${INSTALL_RPATH};/home/dave/ros/clam/install/lib/gearbox"
                       BUILD_WITH_INSTALL_RPATH TRUE)

ADD_EXECUTABLE (flexiport_tcp_example tcp_example.cpp)
TARGET_LINK_LIBRARIES (flexiport_tcp_example flexiport)
SET_TARGET_PROPERTIES (flexiport_tcp_example PROPERTIES
                       LINK_FLAGS "-L/home/dave/ros/clam/install/lib/gearbox"
                       INSTALL_RPATH "${INSTALL_RPATH};/home/dave/ros/clam/install/lib/gearbox"
                       BUILD_WITH_INSTALL_RPATH TRUE)

ADD_EXECUTABLE (flexiport_udp_example udp_example.cpp)
TARGET_LINK_LIBRARIES (flexiport_udp_example flexiport)
SET_TARGET_PROPERTIES (flexiport_udp_example PROPERTIES
                       LINK_FLAGS "-L/home/dave/ros/clam/install/lib/gearbox"
                       INSTALL_RPATH "${INSTALL_RPATH};/home/dave/ros/clam/install/lib/gearbox"
                       BUILD_WITH_INSTALL_RPATH TRUE)
