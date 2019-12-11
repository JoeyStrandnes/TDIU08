//#include "hero.h"
#include "hero_io.h"






int main(){

vector <Hero_Type> All_Heroes;
fstream File;

File.open("REGISTER.TXT", fstream::in);

All_Heroes = Read_Register(File);
Put_Hero(All_Heroes);
  return 0;
}
