#include "hero_io.h"



using namespace std;


//vector<Hero_Type> All_Heroes;


bool Get_Hero(fstream & Heroes, Hero_Type & Hero_TMP){

    //struct Hero_Type Hero_TMP{};

    int int_Holder;
    string Temp_String{};

    if(!(Heroes >> Hero_TMP.Name)){
      return false;
    }

    Heroes >> Hero_TMP.Age;
    Heroes >> Hero_TMP.Sex;
    Heroes >> Hero_TMP.Weight;
    Heroes >> Hero_TMP.Hair_Color;

    //Heroes >> Temp_String;
    //Heroes >> Temp_String;

    getline(Heroes, Temp_String);
    stringstream KUL(Temp_String);

    while (KUL >> int_Holder) {
    Hero_TMP.Intressen.push_back(int_Holder);
    }

    //Hero_TMP.Intressen.clear();
    return true;

}


vector<Hero_Type> Read_Register(fstream & Hero_Stream){

Hero_Type Hero{};
vector<Hero_Type> All_Heroes;

while (Get_Hero(Hero_Stream, Hero)) {
    All_Heroes.push_back(Hero);
    Hero.Intressen.clear();
  }

return All_Heroes;
}

void Put_Hero(vector<Hero_Type> All_Heroes){

fstream File;
File.open("REGISTER.TXT", fstream::out);

for (size_t i = 0; i < All_Heroes.size(); i++) {

  File << All_Heroes.at(i).Name<<" ";
  File << All_Heroes.at(i).Age<<" ";
  File << All_Heroes.at(i).Sex<<" ";
  File << All_Heroes.at(i).Weight<<" ";
  File << All_Heroes.at(i).Hair_Color<<"  ";

  for (int k = 0; k < All_Heroes.at(i).Intressen.size(); k++) {
    File << All_Heroes.at(i).Intressen.at(k)<<" ";
  }
  File << endl;
  usleep(1000000); //Skriv allt till en string stream och sedan skriva string streamen sammtidigt till filen 
}


}



void Match(vector<Hero_Type> TEMP, vector<int> numbers){
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
        matches << "   " <<  TEMP.at(i).Hair_Color << " ";

        for (int c{0}; c < TEMP.at(i).Intressen.size(); c++){
          matches << TEMP.at(i).Intressen.at(c)<< " ";
        }

        matches << endl;
        TEMP.at(i).Intressen.clear();

      }
    }
  }
}
matches.close();

}
