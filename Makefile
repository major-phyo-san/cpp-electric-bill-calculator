CC = g++
COMPILE = -c
ARLIB = ar
OBJ_MOV = -rc
OUTPUT = -o

C_STD = -std=c++17
C_WARN = -Wall
C_OPT = -O

P_NAME = cpp-electric-bill-calculator
LIB_NAME = bill-calculation-lib.a

$(P_NAME): main.cpp $(LIB_NAME)
	$(CC) main.cpp -L. $(LIB_NAME) $(OUTPUT) $(P_NAME) $(C_OPT) $(C_STD) $(C_WARN)

$(LIB_NAME): BillCalculateSupport.o DomesticUnits.o DomesticBillCalculator.o IndustrialUnits.o IndustrialBillCalculator.o
	$(ARLIB) $(OBJ_MOV) $(LIB_NAME) BillCalculateSupport.o DomesticUnits.o DomesticBillCalculator.o IndustrialUnits.o IndustrialBillCalculator.o

BillCalculateSupport.o: BillCalculateSupport.cpp
	$(CC) $(COMPILE) BillCalculateSupport.cpp $(C_OPT) $(C_STD) $(C_WARN)

DomesticUnits.o: DomesticUnits.cpp
	$(CC) $(COMPILE) DomesticUnits.cpp $(C_OPT) $(C_STD) $(C_WARN)

DomesticBillCalculator.o: DomesticBillCalculator.cpp
	$(CC) $(COMPILE) DomesticBillCalculator.cpp $(C_OPT) $(C_STD) $(C_WARN)

IndustrialUnits.o: IndustrialUnits.cpp
	$(CC) $(COMPILE) IndustrialUnits.cpp $(C_OPT) $(C_STD) $(C_WARN)

IndustrialBillCalculator.o: IndustrialBillCalculator.cpp
	$(CC) $(COMPILE) IndustrialBillCalculator.cpp $(C_OPT) $(C_STD) $(C_WARN)

clean:
	rm -f core *.o