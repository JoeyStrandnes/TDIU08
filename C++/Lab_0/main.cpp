//
//  main.cpp
//  tester
//
//  Created by Vige Ekelund on 2019-10-10.
//  Copyright © 2019 Vige Ekelund. All rights reserved.
//
#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    int heltal;
    double flyt;
    char karak;
    string ord;
    
    /*
    cout << "Skriv in ett heltal: ";
    cin >> heltal;
    cout << "Du skrev in talet: " << heltal;
    cout << "\nSkriv in fem heltal: ";
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
    cout << heltal << " ";
    */
    
    /*
    cout << "Skriv in ett flyttal: ";
    cin >> flyt;
    cout << "Du skrev in flyttalet: " << fixed << setprecision(3) << flyt;
    */
    
    /*
    cout << "Skriv in ett heltal och ett flyttal: ";
    cin >> heltal >> flyt;
    cout << "Du skrev in heltalet: " << heltal << "\n";
    cout << "Du skrev in flyttalet: " << fixed << setprecision(4) << flyt;
    */
    
    /*
    cout << "Skriv in ett flyttal och ett heltal: ";
    cin >> flyt >> heltal;
    cout << setfill('-');
    cout << "Du skrev in heltalet:" << setw(10) << heltal << "\n";
    cout << "Du skrev in flyttalet:" << setw(9) << fixed << setprecision(4) << flyt;
    */
    
    /*
    cout << "Skriv in ett tecken: ";
    cin >> karak;
    cout << "Du skrev in tecknet: " << karak;
    */
    
    /*
    cout << "Skriv in ett ord: ";
    cin >> ord;
    cout << "Du skrev in ordet: " << ord;
    */
    
    /*
    cout << "Skriv in ett heltal och ett ord: ";
    cin >> heltal >> ord;
    cout << "Du skrev in talet |" << heltal << "| och ordet |" << ord << "|.";
    */
    
    /*
    cout << "Skriv in ett tecken och ett ord: ";
    cin >> karak >> ord;
    cout << "Du skrev in "<< '"' << ord << '"' << " och " << "'" << karak << "'.";
    */
    
    /*
    cout << "Skriv in ett ord och ett tecken: ";
    cin >> ord >> karak;
    cout << "Du skrev in "<< '"' << ord << '"' << " och " << "'" << karak << "'.";
    */
    
    
    /*
    cout << "Skriv in en textrad: ";
    getline(cin, ord);
    cout << "Du skrev in "<< '"' << ord << '"' << ".\n";
    
    cout << "Skriv in en till textrad: ";
    getline(cin, ord);
    cout << "Du skrev in "<< '"' << ord << '"' << ".";
    */
    
    cout << "Skriv in en rad med tre ord: ";
    getline(cin, ord, ' ');
    cout << "Du skrev in: " << '"' << ord << '"' << ", " ;
    getline(cin, ord, ' ');
    cout << '"' << ord << '"' << " och ";
    getline(cin, ord);
    cout << '"' << ord << '"' << '.';
     
    return 0;
}
