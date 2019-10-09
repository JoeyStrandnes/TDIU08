-- Laboration: 0 - Mycket grundläggande in- och utmatning
-- Joseph Strandnes; Vige Ekelund
-- 02/09-2019

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;


procedure Main is


   Int_Holder: Integer;
   String_Holder: String(1..5);
   Character_Holder: Character;
   Float_Holder: Float;


begin

    Put("Skriv in ett heltal: ");
    Get(Int_Holder);
    --Skip_Line(1);
    Put("Du skrev in talet: ");
    Put(Int_Holder, width => 0);
    Skip_Line(1);

    New_Line(2);
    Put("Skriv in fem heltal: ");
    Get(Int_Holder);
    Put("Du skrev talen: ");
    Put(Int_Holder, width => 3);
    Get(Int_Holder);
    Put(Int_Holder, width => 3);
    Get(Int_Holder);
    Put(Int_Holder, width => 3);
    Get(Int_Holder);
    Put(Int_Holder, width => 3);
    Get(Int_Holder);
    Put(Int_Holder, width => 3);
    Skip_Line(1);

    New_Line(2);
    Put("Skriv in ett flyttal: ");
    Get(Float_Holder);
    Skip_Line(1);
    Put("Du skrev in flyttalet: ");
    Put(Float_Holder, fore => 2, aft => 3, exp => 0);

    New_Line(2);
    Put("Skriv in ett heltal och ett flyttal: ");
    Get(Int_Holder);
    Get(Float_Holder);
    Put("Du skrev in heltalet: ");
    Put(Int_Holder, width => 8);
    New_Line(1);
    Put("Du skrev in flyttalet: ");
    Put(Float_Holder, fore => 2, aft => 4, exp => 0);
    Skip_Line(1);

    New_Line(2);
    Put("Skriv in ett tecken: ");
    Get(Character_Holder);
    Put("Du skrev in tecknet: ");
    Put(Character_Holder);
    Skip_Line(1);

    New_Line(2);
    Put("Skriv in en sträng med 5 tecken: ");
    Get(String_Holder);
    Put("Du skrev in strängen: ");
    Put(String_holder);
    Skip_Line(1);

    New_Line(2);
    Put("Skriv in en sträng med 3 tecken: ");
    Get(String_Holder(1..3));
    Put("Du skrev in strängen: ");
    Put(String_holder(1..3));
    Skip_Line(1);

    New_Line(2);
    Put("Skriv in ett heltal och en sträng med 5 tecken: ");
    Get(Int_Holder);
    Get(String_Holder(1..1));
    Get(String_Holder);
    Put("Du skrev in talet |");
    Put(Int_Holder, width => 1);
    Put("| och strängen |");
    Put(String_holder);
    Put("|. ");
    Skip_Line(1);

    New_Line(2);
    Character_Holder:= ('"');
    Put("Skriv in en sträng med 3 tecken och ett flyttal: ");
    Get(String_Holder(1..3));
    Get(Float_Holder);
    Put("Du skrev in ");
    Put(Character_Holder);
    Put(Float_Holder, fore => 2, aft => 3, exp => 0);
    Put(Character_Holder);
    Put(" och ");
    Put(Character_Holder);
    Put(String_holder(1..3));
    Put(Character_Holder);


   --null;
end Main;
