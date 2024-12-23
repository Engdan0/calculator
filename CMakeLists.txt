cmake_minimum_required(VERSION 3.10)
project(Calculator)

# Set C++ Standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add sources
set(LIBRARY_SOURCES
    calculator.cpp
)
set(EXECUTABLE_SOURCES
    main.cpp
)

# Include headers
include_directories(${CMAKE_SOURCE_DIR})

# Create library (static or shared)
add_library(calculator STATIC ${LIBRARY_SOURCES})

# Create executable
add_executable(calculator_app ${EXECUTABLE_SOURCES})

# Link library to executable
target_link_libraries(calculator_app PRIVATE calculator)
