#include <iostream>
#include <sstream>
#include <fstream>
#include "Hero_Reg.h"


using namespace std;

vector<Hero_Register> All_Heroes{};

vector Hero_IN(){

  struct Hero_Register Hero_TMP{};

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
  //Heroes >> Hero_TMP.Species;
  //Heroes >> Hero_TMP.Eye_Color;

  getline(Heroes, Temp_String);
  stringstream KUL(Temp_String);

  cout << Hero_TMP.Name << '\n';

  while (KUL >> int_Holder) {
  Hero_TMP.Intressen.push_back(int_Holder);
  }


  All_Heroes.push_back(Hero_TMP);
}


return All_Heroes;

}
