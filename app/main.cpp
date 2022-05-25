//
// Created by Techman (MajorSan) on 23/07/2019.
// Updated by Techman (MajorSan) on 19/04/2020.
// Refactored by Techman (MajorSan) on 25/05/2022.
//

#include "include/domesticbillcalculator.h"
#include "include/industrialbillcalculator.h"

#include <iostream>

using namespace std;

int main()
{
    double inputUnits;
    char ch;
    cout << "Press D for domestic bill" << endl
         << "Press I for industry bill" << endl;
    cin >> ch;
    if (ch == 'd')
    {
        cout << "Enter Units" << endl;
        cin >> inputUnits;
        cout << calculateDomesticBill(inputUnits);
    }
    else if (ch == 'i')
    {
        cout << "Enter Units" << endl;
        cin >> inputUnits;
        cout << calculateIndustryBill(inputUnits);
    }
    else
    {
        cout << "Invalid choice" << endl;
        main();
    }

    return 0;
}