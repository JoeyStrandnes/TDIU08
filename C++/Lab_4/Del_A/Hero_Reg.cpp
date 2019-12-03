#include <iostream>
#include <sstream>
#include <fstream>
#include "Hero_Reg.h"


using namespace std;



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
        matches << TEMP.at(i).Name << endl;

      }
    }
  }
}
matches.close();

}
