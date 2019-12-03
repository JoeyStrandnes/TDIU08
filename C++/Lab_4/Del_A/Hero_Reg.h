#include <string>
#include <vector>

using namespace std;



struct Hero_Register{
string Name{};
int Age{};
char Sex{};
int Weight{};
string Hair_Color{};
vector<int> Intressen{};
//enum Species{Human, Elf, Orc, Halfling, Ogre, Lizardman};
//enum Eye_Color{Blue, Green, Brown, Gray, Yellow, Red, Black, Crazy};
};

vector<Hero_Register> All_Heroes{};

Hero_Register Hero_IN();
