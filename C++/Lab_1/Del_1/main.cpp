#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

int main(){

  double fp;
  double lp;
  double s;

  cout << "Ange startvärde: ";
  cin >> fp;

  while (fp < 0.0){

    cout << "Felaktigt startvärde!" << '\n';
    cout << "Ange startvärde: ";
    cin >> fp;
  }

  cout << "Ange slutvärde: ";
  cin >> lp;

  while (lp < 0.0 || lp <= fp){

    cout << "Felaktigt slutvärde!" << '\n';
    cout << "Ange slutvärde: ";
    cin >> lp;
  }

std::cout << "Celsius     Kelvin  Farenheit   Réaumur" << '\n';
std::cout << "---------------------------------------" << '\n';

for (size_t i = fp; i <= lp ; i++) {

std::cout << setw(7)  << i ;
std::cout << setw(11) << fixed << setprecision(2) << i+273.15 ;
std::cout << setw(11) << fixed << setprecision(2) << (i*1.8)+32 ;
std::cout << setw(10) << fixed << setprecision(2) << i*0.8  << '\n';
}


  while (1) {
    /* code */
  }
  //return 0;
}  // Mom
