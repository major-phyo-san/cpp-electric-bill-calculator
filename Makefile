COMPILE = -c
OUTPUT = -o
CC = g++

meter-test2: main.o BillCalculateSupport.o DomesticUnits.o DomesticBillCalculator.o IndustrialUnits.o IndustrialBillCalculator.o
	$(CC) main.o BillCalculateSupport.o DomesticUnits.o DomesticBillCalculator.o IndustrialUnits.o IndustrialBillCalculator.o $(OUTPUT) meter-test2

main.o: main.cpp
	$(CC) $(COMPILE) main.cpp

BillCalculateSupport.o: BillCalculateSupport.cpp
	$(CC) $(COMPILE) BillCalculateSupport.cpp

DomesticUnits.o: DomesticUnits.cpp
	$(CC) $(COMPILE) DomesticUnits.cpp

DomesticBillCalculator.o: DomesticBillCalculator.cpp
	$(CC) $(COMPILE) DomesticBillCalculator.cpp

IndustrialUnits.o: IndustrialUnits.cpp
	$(CC) $(COMPILE) IndustrialUnits.cpp

IndustrialBillCalculator.o: IndustrialBillCalculator.cpp
	$(CC) $(COMPILE) IndustrialBillCalculator.cpp

clean:
	rm -f core *.o