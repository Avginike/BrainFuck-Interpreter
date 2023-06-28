cmake_minimum_required(VERSION 3.0)
project(BFInterpreter C CXX)

set(CMAKE_CXX_STANDARD 17)

file(GLOB sources
     "src/*.hpp"
     "src/*.cpp"
)

add_executable(${PROJECT_NAME} ${sources} )