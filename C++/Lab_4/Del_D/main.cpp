#include "hero_io.h"






int main(){

Hero_Type TMP_Hero{};
vector <Hero_Type> All_Heroes;
vector<int> Numbers;

fstream File;
char Val{};
int intHolder{};
int X{1};

File.open("REGISTER.TXT", fstream::in);


All_Heroes = Read_Register(File);
//Put_Hero(All_Heroes);



cout << "Välkommen till Hero Match­Maker 3000!" << '\n';
cout << "Välj ett alternativ: " << '\n';
cout << "  A) Mata in en ny hjälte" << '\n';
cout << "  B) Hitta matchande hjältar" << '\n';
cout << "Välj ett alternativ: ";
cin >> Val;

if (Val == 'A' | Val == 'a'){
cout << "Mata in hjälten: ";
cin >> TMP_Hero.Name;
cin >> TMP_Hero.Age;
cin >> TMP_Hero.Sex;
cin >> TMP_Hero.Weight;
cin >> TMP_Hero.Hair_Color;

while (cin >> intHolder){
   TMP_Hero.Intressen.push_back(intHolder);
 }

 All_Heroes.push_back(TMP_Hero);
 Put_Hero(All_Heroes);

}

else if (Val== 'B'| Val == 'b'){
cout << "Mata in dina intressen: ";

while (X) {
  cin >> intHolder;
  X = intHolder;
  if (intHolder > 0){
    Numbers.push_back(intHolder);
    }
  }
  Match(All_Heroes, Numbers);
}



  return 0;
}
