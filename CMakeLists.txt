cmake_minimum_required(VERSION 3.15)
project(cpp_electric_bill_calculator)

set(CMAKE_CXX_STANDARD 17)

add_executable(cpp_electric_bill_calculator 
BillCalculateSupport.cpp 
BillCalculateSupport.h 
DomesticUnits.cpp 
DomesticUnits.h 
IndustrialUnits.cpp 
IndustrialUnits.h 
DomesticBillCalculator.cpp 
DomesticBillCalculator.h 
IndustrialBillCalculator.cpp 
IndustrialBillCalculator.h 
main.cpp 
)