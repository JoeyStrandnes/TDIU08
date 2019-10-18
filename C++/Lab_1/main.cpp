#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

int main(){

  double fp;
  double lp;
  double s;

  cout << "Mata in första pris (mellan 0 och 100): ";
  cin >> fp;
  while (fp < 0.0 || fp > 100.0){

    cout << "ERROR: Mata in första pris igen: ";
    cin >> fp;
  }

  do{

    cout << "Mata in sista pris (minst första pris): ";
    cin >> lp;
  }
  while ( lp < fp );

  cout << "Mata in steglängd: ";
  while ( true ){

    cin >> s;
    if ( s > 0.0 ){

      break;
    }
    cout << "ERROR: Mata in steglängd igen: ";
  }

  const double m = 25.0; 			       	// Initiering bör ske med { }

  int n;
  n = floor((lp - fp) / s) + 1.0;			// Typomvanling från double till int trunkerar

  cout << "MOMSTABELL (mini)" << endl;
  for ( int i = 0 ; i < n ; ++i ){

    cout << setprecision(2) << fixed			// Gäller framöver (borde kanske göras utanför)...
    	 << setw(8) << fp + i * s;			// setw gäller bara nästa utmatning ...

    cout << setw(10)
    	 << (fp + (i * s)) * m / 100.0
    	 << setw(10)
    	 << (fp + i * s) * (1.0 + m / 100.0);

    cout << endl;
  }

  //return 0;
}  // Mom
