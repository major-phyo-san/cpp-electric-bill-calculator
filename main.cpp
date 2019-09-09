#include <iostream>
#include "include/DomesticBillCalculator.h"
#include "include/IndustrialBillCalculator.h"

using namespace std;

int main()
{
    double inputUnits;
    char ch;
    cout<<"Press D for domestic bill"<<endl<<"Press I for industry bill"<<endl;
    cin>>ch;
    if(ch == 'd')
    {
    cout<<"Enter Units"<<endl;
    cin>>inputUnits;
    cout<<calculateDomesticBill(inputUnits);
    }
    else if(ch == 'i')
    {
    cout<<"Enter Units"<<endl;
    cin>>inputUnits;
    cout<<calculateIndustryBill(inputUnits);
    }
    else
    {
    cout<<"Invalid choice"<<endl;
    main();
    }
}