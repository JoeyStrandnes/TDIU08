#include <iostream>
#include <iomanip>
#include <string>
#include <cmath>

using namespace std;

int main(){

string Text;
int Ord = {0};
string MinOrd;
int MinOrdLength = {100};

string MaxOrd;
int MaxOrdLength = {0};

int Medel = {0};

  cout << "Mata in texten: ";


  while (cin >> Text) {



    if (Text.length() < MinOrdLength) {
      MinOrd = Text;
      MinOrdLength = Text.length();
    }

    if (Text.length() > MaxOrdLength) {
      MaxOrd = Text;
      MaxOrdLength = Text.length();
    }


    Medel += Text.length();
    Ord++;

  }


if (Text.length() == 0) {
  cout << "ERROR åt hälvette" << '\n';


}else{
    cout  << '\n';
    cout << "Texten innehöll: " << Ord << " ord" <<'\n';
    cout << "Det kortaste ordet var " << '"'<< MinOrd<< '"' << " med " << MinOrdLength << " bokstäver" << '\n';
    cout << "Det längsta ordet var " << '"'<< MaxOrd<< '"' << " med " << MaxOrdLength << " bokstäver" << '\n';
    cout << "Medelordlängden var " << Medel/Ord << " bokstäver" << '\n';
  }



  while (1) {
    /* code */
  }

  //return 0;
}  // Mom
