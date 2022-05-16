CC = g++
COMPILE = -c
ARLIB = ar
OBJ_MOV = -rc
OUTPUT = -o

CFLAGS = -Wall -O -std=c++17

BUILD_DIR = ../build
SRC_DIR = ../app

LIB = $(BUILD_DIR)/libbill-calculation.lib
EXECUTABLE = $(BUILD_DIR)/electric-bill-calculator

$(EXECUTABLE): $(SRC_DIR)/main.cpp $(LIB)
	$(CC) $(SRC_DIR)/main.cpp -L. $(LIB) $(OUTPUT) $(EXECUTABLE) $(CFLAGS)

$(LIB): $(BUILD_DIR)/BillCalculateSupport.o $(BUILD_DIR)/DomesticUnits.o $(BUILD_DIR)/DomesticBillCalculator.o $(BUILD_DIR)/IndustrialUnits.o $(BUILD_DIR)/IndustrialBillCalculator.o
	$(ARLIB) $(OBJ_MOV) $(LIB) $(BUILD_DIR)/BillCalculateSupport.o $(BUILD_DIR)/DomesticUnits.o $(BUILD_DIR)/DomesticBillCalculator.o $(BUILD_DIR)/IndustrialUnits.o $(BUILD_DIR)/IndustrialBillCalculator.o

$(BUILD_DIR)/BillCalculateSupport.o: $(SRC_DIR)/BillCalculateSupport.cpp
	$(CC) $(COMPILE) $(SRC_DIR)/BillCalculateSupport.cpp $(OUTPUT) $(BUILD_DIR)/BillCalculateSupport.o $(CFLAGS)

$(BUILD_DIR)/DomesticUnits.o: $(SRC_DIR)/DomesticUnits.cpp
	$(CC) $(COMPILE) $(SRC_DIR)/DomesticUnits.cpp $(OUTPUT) $(BUILD_DIR)/DomesticUnits.o $(CFLAGS)

$(BUILD_DIR)/DomesticBillCalculator.o: $(SRC_DIR)/DomesticBillCalculator.cpp
	$(CC) $(COMPILE) $(SRC_DIR)/DomesticBillCalculator.cpp $(OUTPUT) $(BUILD_DIR)/DomesticBillCalculator.o $(CFLAGS)

$(BUILD_DIR)/IndustrialUnits.o: ../app/IndustrialUnits.cpp
	$(CC) $(COMPILE) $(SRC_DIR)/IndustrialUnits.cpp $(OUTPUT) $(BUILD_DIR)/IndustrialUnits.o $(CFLAGS)

$(BUILD_DIR)/IndustrialBillCalculator.o: ../app/IndustrialBillCalculator.cpp
	$(CC) $(COMPILE) $(SRC_DIR)/IndustrialBillCalculator.cpp $(OUTPUT) $(BUILD_DIR)/IndustrialBillCalculator.o $(CFLAGS)

.PHONY: clean

clean:
	rm -f core $(BUILD_DIR)/*.o
	rm -rf $(BUILD_DIR)/*.o