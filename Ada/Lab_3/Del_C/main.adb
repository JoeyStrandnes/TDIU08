with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;


procedure main is

type Char_Array_Type is array (1..256) of character;
type Art_Type is (Human, Elf, Orc, Halfling, Ogre, Lizardman); 
type Eye_Type is (Blue, Green, Brown, Gray, Yellow, Red, Black, Crazy); 

----------------------------------------------------------
type String_Type is record

Char_Array: Char_Array_Type;
Length: Integer;

end record; 

----------------------------------------------------------
type Hero_Type is record
Hair_Color: String_Type;
Name: String_Type;
Age: Integer;
Weight:Float;
Sex: Character;
end record;
----------------------------------------------------------
Procedure Fill_Arr (K: out String_Type) is

Counter: integer:= 0;
begin

loop
Counter:= Counter+1;
Get(K.Char_Array(Counter));
K.Length:=Counter;
if end_of_line = true then
exit;
end if;

end loop;

end Fill_Arr;
----------------------------------------------------------
Procedure Put_Arr (K: in String_Type) is

begin

for i in 1..(K.Length) loop

Put(K.Char_Array(i));
end loop;



end Put_Arr;
----------------------------------------------------------
procedure Get_Hero (k: out Hero_type) is 



begin

Put("Knappa in namn: ");
Fill_Arr(k.Name);
New_Line(2);
Put("Knappa in ålder: ");
Get(k.Age);
New_Line(2);
Put("Knappa in Kön M/F: ");
Get(k.Sex);
New_Line(2);
Put("Knappa in vikt: ");
Get(k.Weight);
New_Line(2);
Put("Knappa in hårfärg: ");
Fill_Arr(k.Hair_Color);





end Get_Hero;

----------------------------------------------------------
procedure Put_Hero (k: in Hero_Type) is


begin
Put("Namn: ");
Put_Arr(k.Name);
New_Line(1);
Put("Ålder: ");
Put(k.Age, 0);
New_Line(1);
Put("Kön: ");
Put(k.Sex);
New_Line(1);
Put("Vikt: ");
Put(k.Weight, exp=>0, aft => 1);
New_Line(1);
Put("Hårfärg: ");
Put_Arr(k.Hair_Color);

end Put_Hero;
----------------------------------------------------------

Hero_Holder: Hero_Type;

begin
Get_Hero(Hero_Holder);
Put_Hero(Hero_Holder);









end main;





















