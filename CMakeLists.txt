cmake_minimum_required(VERSION 3.15)
project(cpp_electric_bill_calculator)

set(CMAKE_CXX_STANDARD 17)

add_library(
bill-calculation
SHARED #we are dynamically linking, producing both a .dll (.so on Linux) file and a static lib file. static linking must omit this keyword.
BillCalculateSupport.cpp 
DomesticUnits.cpp 
IndustrialUnits.cpp 
DomesticBillCalculator.cpp 
IndustrialBillCalculator.cpp 
)

add_executable(
cpp-electric-bill-calculator 
main.cpp 
)

target_link_libraries(
cpp-electric-bill-calculator 
bill-calculation
)
