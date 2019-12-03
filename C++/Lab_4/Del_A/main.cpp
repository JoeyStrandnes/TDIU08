#include <iostream>
#include "Hero_Reg.h"
#include <string>

using namespace std;



vector<Hero_Register> TEMP{};
int main(){

char Val{};

cout << "Välkommen till Hero Match­Maker 3000!" << '\n';
cout << "Välj ett alternativ: " << '\n';
cout << "  A) Mata in en ny hjälte" << '\n';
cout << "  B) Hitta matchande hjältar" << '\n';
cout << "Välj ett alternativ: ";

cin >> Val;

TEMP = Hero_IN();
//std::cout << "KLAR" << '\n';

}
