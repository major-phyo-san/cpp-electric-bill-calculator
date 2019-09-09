cmake_minimum_required(VERSION 3.15)
project(cpp_electric_bill_calculator)

set(CMAKE_CXX_STANDARD 17)

add_library(
-bill-calculation 
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
${CMAKE_SOURCE_DIR}/build/unix-bin/lib-bill-calculation.a 
)


