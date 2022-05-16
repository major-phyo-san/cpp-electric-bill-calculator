cmake_minimum_required(VERSION 3.15)
project(electric_bill_calculator)

set(CMAKE_CXX_STANDARD 17)

add_library(
bill-calculation
#SHARED # we are dynamically linking, producing both a .dll (.so on Linux) file and a static lib file. static linking must omit this keyword.
../../app/BillCalculateSupport.cpp 
../../app/DomesticUnits.cpp 
../../app/IndustrialUnits.cpp 
../../app/DomesticBillCalculator.cpp 
../../app/IndustrialBillCalculator.cpp 
)

add_executable(
electric-bill-calculator 
../../app/main.cpp 
)

target_link_libraries(
electric-bill-calculator 
bill-calculation
)
