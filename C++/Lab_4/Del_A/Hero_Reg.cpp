#include <iostream>
#include <sstream>
#include <fstream>
#include "Hero_Reg.h"
//#include "Header_Fil2.h"

using namespace std;

/*
vector<Hero_Type> Hero_IN(){

  struct Hero_Type Hero_TMP{};
  vector<Hero_Type> Hero_reg;

  fstream Heroes;
  Heroes.open("Register.txt", fstream::in);

  int int_Holder;
  string Temp_String{};

  while (Heroes >> Hero_TMP.Name){

  Heroes >> Hero_TMP.Age;
  Heroes >> Hero_TMP.Sex;
  Heroes >> Hero_TMP.Weight;
  Heroes >> Hero_TMP.Hair_Color;

  Heroes >> Temp_String;
  Heroes >> Temp_String;


  getline(Heroes, Temp_String);
  stringstream KUL(Temp_String);

  while (KUL >> int_Holder) {
  Hero_TMP.Intressen.push_back(int_Holder);
  }


  Hero_reg.push_back(Hero_TMP);
  Hero_TMP.Intressen.clear();
}

return Hero_reg;

}
*/
void Match(vector<Hero_Type> TEMP, vector<int> numbers){
int Kalle{};
fstream matches;
matches.open("RESULT.TXT", fstream::out);


for (int g=0; g<numbers.size(); g++)
{
  for (int i=0; i<TEMP.size(); i++)
  {
    for (int k{0}; k < TEMP.at(i).Intressen.size(); k++)
    {

      if(numbers.at(g) == TEMP.at(i).Intressen.at(k))
      {
        matches << TEMP.at(i).Name;
        matches << "   " <<  TEMP.at(i).Age;
        matches << "   " <<  TEMP.at(i).Sex;
        matches << "   " <<  TEMP.at(i).Weight;
        matches << "   " <<  TEMP.at(i).Hair_Color;

        for (int k{0}; k < TEMP.at(i).Intressen.size(); k++){
          matches << TEMP.at(i).Intressen.at(k)<< " ";
        }

        matches << endl;
        TEMP.at(i).Intressen.clear();

      }
    }
  }
}
matches.close();

}



void add(vector<Hero_Type>& TEMP)
{
  int intHolder{};

  struct Hero_Type Hero_TMP{};
  std::cout << "Mata in namn: ";
  cin >> Hero_TMP.Name;
  std::cout << "Mata in ålder: ";
  cin >> Hero_TMP.Age;
  std::cout << "Mata in kön (M/F): ";
  cin >> Hero_TMP.Sex;
  std::cout << "Mata in vikt: ";
  cin >> Hero_TMP.Weight;
  std::cout << "Mata in hårfärg: ";
  cin >> Hero_TMP.Hair_Color;

  std::cout << "Mata in intressen (max 10): ";
  while (cin >> intHolder)
  {
    Hero_TMP.Intressen.push_back(intHolder);
  }

  TEMP.push_back(Hero_TMP);
  fstream adder;
  adder.open("Register.txt", fstream::app);
  adder << Hero_TMP.Name << " " << Hero_TMP.Age << " " << Hero_TMP.Sex << " " << Hero_TMP.Weight << " " << Hero_TMP.Hair_Color << " ";

  for(int i=0; i < Hero_TMP.Intressen.size(); i++)
  {
    adder<<Hero_TMP.Intressen.at(i);
    adder<<" ";
  }
  adder.close();
}
