#include <iostream>
#include <iomanip>
#include <string>
#include <cmath>
#include <ctype.h>

using namespace std;


void Fakultet(int N){


int K{N};


for (int i = 1; i <K; i++){
N=N*i;
}

cout << N << '\n';
}

double Heltal(double a, double b){

//cout << a+b << '\n';
  return a+b;
}


void Swap_Nibs(double A, double B) {
    swap(A, B);
    cout << A << '\n';
    cout << B << '\n';
}


int main(){

double Inmatning{};
double Inmatning2{};
double Temp{};

cout << "Mata in N fakultet: ";
cin >> Inmatning;
Fakultet(Inmatning);

cout << "Mata in två heltal: ";
cin >> Inmatning;
cin >> Inmatning2;

Temp = Heltal(Inmatning, Inmatning2);

std::cout << Temp << '\n';

cout << "Mata in ett flytal och ett heltal: ";
cin >> Inmatning;
cin >> Inmatning2;
//Heltal(Inmatning, Inmatning2);
Temp = Heltal(Inmatning, Inmatning2);

std::cout << Temp << '\n';

cout << "Mata in två flytal: ";
cin >> Inmatning;
cin >> Inmatning2;
//Heltal(Inmatning, Inmatning2);
Temp = Heltal(Inmatning, Inmatning2);

std::cout << Temp << '\n';

cout << "Mata in två värden du vill byta plats på: ";
cin >> Inmatning;
cin >> Inmatning2;
//Swap_Nibs(Inmatning, Inmatning2);
Temp = Heltal(Inmatning, Inmatning2);

std::cout << Temp << '\n';



  while (1) {
    /* code */
  }
}
