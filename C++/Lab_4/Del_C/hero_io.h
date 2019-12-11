#include "hero.h"



Hero_Type Get_Hero(fstream & Heroes);
vector<Hero_Type> Read_Register(fstream & Hero_Stream);
void Match(vector<Hero_Type> TEMP, vector<int> numbers);
void Put_Hero(vector<Hero_Type> Hero);
