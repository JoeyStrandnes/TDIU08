#include <string>
#include <vector>

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

//vector<Hero_Type> All_Heroes{};

vector<Hero_Type> Hero_IN();
void Match(vector<Hero_Type>, vector<int>);

void add(vector<Hero_Type>&);
