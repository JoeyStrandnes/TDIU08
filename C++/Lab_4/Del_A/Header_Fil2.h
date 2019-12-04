#include <string>
#include <vector>
#include <fstream>

using namespace std;



struct Hero_Type{
string Name{};
int Age{};
char Sex{};
int Weight{};
string Hair_Color{};
vector<int> Intressen{};
//enum Species{Human, Elf, Orc, Halfling, Ogre, Lizardman};
//enum Eye_Color{Blue, Green, Brown, Gray, Yellow, Red, Black, Crazy};
};

//vector<Hero_Type> Hero_IN();
Hero_Type Hero_IN(fstream &);
