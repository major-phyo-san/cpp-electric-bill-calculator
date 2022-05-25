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

$(LIB): $(BUILD_DIR)/billcalculatesupport.o $(BUILD_DIR)/domesticunits.o $(BUILD_DIR)/domesticbillcalculator.o $(BUILD_DIR)/industrialunits.o $(BUILD_DIR)/industrialbillcalculator.o
	$(ARLIB) $(OBJ_MOV) $(LIB) $(BUILD_DIR)/billcalculatesupport.o $(BUILD_DIR)/domesticunits.o $(BUILD_DIR)/domesticbillcalculator.o $(BUILD_DIR)/industrialunits.o $(BUILD_DIR)/industrialbillcalculator.o

$(BUILD_DIR)/billcalculatesupport.o: $(SRC_DIR)/billcalculatesupport.cpp
	$(CC) $(COMPILE) $(SRC_DIR)/billcalculatesupport.cpp $(OUTPUT) $(BUILD_DIR)/billcalculatesupport.o $(CFLAGS)

$(BUILD_DIR)/domesticunits.o: $(SRC_DIR)/domesticunits.cpp
	$(CC) $(COMPILE) $(SRC_DIR)/domesticunits.cpp $(OUTPUT) $(BUILD_DIR)/domesticunits.o $(CFLAGS)

$(BUILD_DIR)/domesticbillcalculator.o: $(SRC_DIR)/domesticbillcalculator.cpp
	$(CC) $(COMPILE) $(SRC_DIR)/domesticbillcalculator.cpp $(OUTPUT) $(BUILD_DIR)/domesticbillcalculator.o $(CFLAGS)

$(BUILD_DIR)/industrialunits.o: ../app/industrialunits.cpp
	$(CC) $(COMPILE) $(SRC_DIR)/industrialunits.cpp $(OUTPUT) $(BUILD_DIR)/industrialunits.o $(CFLAGS)

$(BUILD_DIR)/industrialbillcalculator.o: ../app/industrialbillcalculator.cpp
	$(CC) $(COMPILE) $(SRC_DIR)/industrialbillcalculator.cpp $(OUTPUT) $(BUILD_DIR)/industrialbillcalculator.o $(CFLAGS)

.PHONY: clean

clean:
	rm -f core $(BUILD_DIR)/*.o
	rm -rf $(BUILD_DIR)/*.o