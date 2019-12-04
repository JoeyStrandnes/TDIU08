#include <iostream>
#include <string>
#include <fstream>
#include "Hero_Reg.h"
//#include "Header_Fil2.h"

using namespace std;

vector<Hero_Type> TEMP;
Hero_Type TEMP2;
string Temp_String{};
//stringstream Val(Temp_String);


int main(){

char Val{};
int x = 1;

vector<int>Bengt{};

fstream Heroes;
Heroes.open("Register.txt", fstream::in);

for (size_t i = 0; i < 30; i++) {
  TEMP2 = Hero_IN(Heroes);
  TEMP.push_back(TEMP2);
}

Heroes.close();


cout << "Välkommen till Hero Match­Maker 3000!" << '\n';
cout << "Välj ett alternativ: " << '\n';
cout << "  A) Mata in en ny hjälte" << '\n';
cout << "  B) Hitta matchande hjältar" << '\n';
cout << "Välj ett alternativ: ";
cin >> Val;

if (Val == 'A')
{
  //Mata in ny hjälte
  add(TEMP);
} else if (Val== 'B'){
//std::cin >> Temp_String;
  while (x!=0)
  {
    cin >> x;
    std::cout << x << '\n';
    Bengt.push_back(x);
  }
  Match(TEMP, Bengt);
}

// Skriv ut alla 30 hjältar + "vige" om "vige" är tillagd
for (int i=0; i < TEMP.size(); i++) {
  cout << TEMP.at(i).Name;
  cout << TEMP.at(i).Age;
  cout << TEMP.at(i).Sex;
  cout << TEMP.at(i).Weight;
  cout << TEMP.at(i).Hair_Color;

  for (int k{0}; k < TEMP.at(i).Intressen.size(); k++){
    cout << TEMP.at(i).Intressen.at(k)<< " ";
  }
  cout << '\n';
}

}
