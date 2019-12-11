#include <string>
#include <vector>
#include <fstream>
#include <sstream>
#include "Header_Fil2.h"


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

/*
vector<Hero_Type> Hero_IN(fstream & Heroes){

  struct Hero_Type Hero_TMP{};
  vector<Hero_Type> Hero_reg;

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
