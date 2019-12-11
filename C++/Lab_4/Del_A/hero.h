#include <string>
#include <vector>
#include <fstream>
#include <sstream>

using namespace std;



struct Hero_Type{
string Name{};
int Age{};
char Sex{};
int Weight{};
string Hair_Color{};
vector<int> Intressen{};
};

Hero_Type Get_Hero(fstream & Heroes));
void Put_Hero(Hero_Type Hero);
