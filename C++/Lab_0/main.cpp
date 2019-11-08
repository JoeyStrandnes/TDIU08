
#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    int heltal;
    double flyt;
    char karak;
    string ord;


    cout << "Skriv in ett heltal: ";
    cin >> heltal;
    cout << "Du skrev in talet: " << heltal << "\n" << endl;

    cin.ignore(1000,'\n');

    cout << "Skriv in fem heltal: ";
    cin >> heltal;
    cout << "Du skrev in talen: ";

    cout << heltal << " ";
    cin >> heltal;
    cout << heltal << " ";
    cin >> heltal;
    cout << heltal << " ";
    cin >> heltal;
    cout << heltal << " ";
    cin >> heltal;
    cout << heltal << " " << "\n" << endl;

    cin.ignore(1000,'\n');

    cout << "Skriv in ett flyttal: ";
    cin >> flyt;
    cout << "Du skrev in flyttalet: " << fixed << setprecision(3) << flyt << "\n" << endl;


    cin.ignore(1000,'\n');

    cout << "Skriv in ett heltal och ett flyttal: ";
    cin >> heltal >> flyt;
    cout << "Du skrev in heltalet: " << heltal << "\n";
    cout << "Du skrev in flyttalet: " << fixed << setprecision(4) << flyt << "\n" << endl;

    cin.ignore(1000,'\n');

    cout << "Skriv in ett flyttal och ett heltal: ";
    cin >> flyt >> heltal;
    cout << setfill('-');
    cout << "Du skrev in heltalet:" << setw(10) << heltal << "\n";
    cout << "Du skrev in flyttalet:" << setw(9) << fixed << setprecision(4) << flyt << "\n" << endl;

    cin.ignore(1000,'\n');

    cout << "Skriv in ett tecken: ";
    cin >> karak;
    cout << "Du skrev in tecknet: " << karak << "\n" << endl;

    cin.ignore(1000,'\n');

    cout << "Skriv in ett ord: ";
    cin >> ord;
    cout << "Du skrev in ordet: " << ord << "\n" << endl;


    cin.ignore(1000,'\n');

    cout << "Skriv in ett heltal och ett ord: ";
    cin >> heltal >> ord;
    cout << "Du skrev in talet |" << heltal << "| och ordet |" << ord << "|." << "\n" << endl;

    cin.ignore(1000,'\n');

    cout << "Skriv in ett tecken och ett ord: ";
    cin >> karak >> ord;
    cout << "Du skrev in "<< '"' << ord << '"' << " och " << "'" << karak << "'." << "\n" << endl;

    cin.ignore(1000,'\n');

    cout << "Skriv in ett ord och ett tecken: ";
    cin >> ord >> karak;
    cout << "Du skrev in "<< '"' << ord << '"' << " och " << "'" << karak << "'." << "\n" << endl;


    cin.ignore(1000,'\n');

    cout << "Skriv in en textrad: ";
    getline(cin, ord);
    cout << "Du skrev in "<< '"' << ord << '"' << ".\n" << endl;


    cout << "Skriv in en till textrad: ";
    getline(cin, ord);
    cout << "Du skrev in "<< '"' << ord << '"' << "." << "\n" << endl;


    cout << "Skriv in en rad med tre ord: ";
    getline(cin, ord, ' ');
    cout << "Du skrev in: " << '"' << ord << '"' << ", " ;
    getline(cin, ord, ' ');
    cout << '"' << ord << '"' << " och ";
    getline(cin, ord);
    cout << '"' << ord << '"' << '.' << "\n" << endl;

    //return 0;

    while (1) {

    }
}
