#include <iostream>
#include <iomanip>
#include <string>
#include <cmath>
#include <ctype.h>

using namespace std;

int main(){

char Text;
int Alpha{0};
int Num{0};
int White{0};
int Total{0};

  cout << "Mata in texten: ";


  while (cin.get(Text)) {

      if (isalpha(Text)) {
        Alpha++;

      } else if(isalnum(Text)){
        Num++;
      }else if (isspace(Text)) {
        White++;
      }

      Total++;

  }




    cout  << '\n';
    std::cout << "Indata innehöll: " <<'\n';
    std::cout << "Alfabetiska tecken: " << Alpha  << '\n';
    std::cout << "Siffertecken......: " << Num    << '\n';
    std::cout << "Vita tecken.......: " << White  << '\n';
    std::cout << "Tecken totalt.....: " << Total  << '\n';



  while (1) {
    /* code */
  }

  //return 0;
}  // Mom
