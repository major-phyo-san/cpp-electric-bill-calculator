cmake_minimum_required(VERSION 3.15)
project(cpp_projects)

set(CMAKE_CXX_STANDARD 17)

add_executable(cpp_projects main.cpp DomesticUnits.cpp DomesticUnits.h IndustrialUnits.cpp IndustrialUnits.h cmake-build-debug/DomesticBillCalculator.cpp cmake-build-debug/DomesticBillCalculator.h IndustrialBillCalculator.cpp IndustrialBillCalculator.h BillCalculateSupport.cpp BillCalculateSupport.h)