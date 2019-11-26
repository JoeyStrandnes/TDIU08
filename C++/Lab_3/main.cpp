#include <vector>
#include <iostream>
#include <random>
#include <algorithm>
#include <iterator>
//#include <string>


using namespace std;

struct Person{

string For_Namn{};
string Efter_Namn{};
string Klubb{};

};

vector<Person> Cont{};

string Holder{};
string F_Namn{};
string E_Namn{};
string K_lubb{};


void Print_Cont(vector <Person> & Cont){

  random_device rd;
  mt19937 g(rd());

  shuffle (Cont.begin(), Cont.end(), g);
  cout << '\n';
  cout << "Startlista: " << '\n';
  cout << "Startnummer Förnamn Efternamn Klubb" << '\n';

  for (int i {}; i <= Cont.size()-1; i++){

    cout << i+1;
    cout << ' ' << Cont[i].For_Namn;
    cout << ' ' << Cont[i].Efter_Namn;
    cout << ' ' << Cont[i].Klubb << '\n';
  }

}


int main() {

cout << "Anmälning, mata in deltagare: " << '\n';

while (cin >> F_Namn) {

  cin >> E_Namn;
  getline(cin, K_lubb);

  struct Person one = {.For_Namn=F_Namn, .Efter_Namn=E_Namn, .Klubb=K_lubb};

  Cont.push_back(one);

}

Print_Cont(Cont);




  //return 0;
  while (1) {
  }
}
