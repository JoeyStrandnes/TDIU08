#include <iostream>
#include "Hero_Reg.h"
#include <string>

using namespace std;



vector<Hero_Type> TEMP;
string Temp_String{};
//stringstream Val(Temp_String);


int main(){

char Val{};
int x = -1;

vector<int>Bengt{};

cout << "Välkommen till Hero Match­Maker 3000!" << '\n';
cout << "Välj ett alternativ: " << '\n';
cout << "  A) Mata in en ny hjälte" << '\n';
cout << "  B) Hitta matchande hjältar" << '\n';
cout << "Välj ett alternativ: ";
cin >> Val;
std::cin >> Temp_String;

while (x!=0)
{
  cin >> x;
  Bengt.push_back(x);
}

TEMP = Hero_IN();

for (int i=0; i < 30; i++) {
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

Match(TEMP, Bengt);

//Hero_IN();
//std::cout << "KLAR" << '\n';

}
