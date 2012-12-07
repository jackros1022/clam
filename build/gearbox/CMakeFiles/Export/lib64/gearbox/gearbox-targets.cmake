# Generated by CMake 2.8.7

IF("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   MESSAGE(FATAL_ERROR "CMake >= 2.6.0 required")
ENDIF("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
CMAKE_POLICY(PUSH)
CMAKE_POLICY(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Create imported target flexiport
ADD_LIBRARY(flexiport SHARED IMPORTED)

# Create imported target GbxLockFileAcfr
ADD_LIBRARY(GbxLockFileAcfr SHARED IMPORTED)

# Create imported target GbxSerialAcfr
ADD_LIBRARY(GbxSerialAcfr SHARED IMPORTED)

# Create imported target GbxUtilAcfr
ADD_LIBRARY(GbxUtilAcfr SHARED IMPORTED)

# Create imported target GbxGarminAcfr
ADD_LIBRARY(GbxGarminAcfr SHARED IMPORTED)

# Create imported target GbxNovatelUtilAcfr
ADD_LIBRARY(GbxNovatelUtilAcfr SHARED IMPORTED)

# Create imported target GbxNovatelAcfr
ADD_LIBRARY(GbxNovatelAcfr SHARED IMPORTED)

# Create imported target hokuyo_aist
ADD_LIBRARY(hokuyo_aist SHARED IMPORTED)

# Load information for each installed configuration.
GET_FILENAME_COMPONENT(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
FILE(GLOB CONFIG_FILES "${_DIR}/gearbox-targets-*.cmake")
FOREACH(f ${CONFIG_FILES})
  INCLUDE(${f})
ENDFOREACH(f)

# Commands beyond this point should not need to know the version.
SET(CMAKE_IMPORT_FILE_VERSION)
CMAKE_POLICY(POP)
