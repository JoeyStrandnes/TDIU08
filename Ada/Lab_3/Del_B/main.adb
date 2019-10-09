with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;


procedure main is

type Char_Array_Type is array (1..256) of character;

----------------------------------------------------------
type String_Type is record
Char_Array: Char_Array_Type;
Length: Integer;

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
function "=" (K: String_Type; L: String_Type) return boolean is

Equal: Boolean;

begin

for i in 1..(K.Length) loop

if K.Length = L.Length  and K.Char_Array(i) = L.Char_Array(i) then
Equal:= True;

else
Equal:= False;
Exit;
end if;


end loop;

return Equal;

end "=";



----------------------------------------------------------

String_Holder: String_Type;
String_Holder2: String_Type;

begin

Put("Fyll Array 1: ");
Fill_Arr(String_Holder);
New_Line(2);
Put("Fyll Array 2: ");
Fill_Arr(String_Holder2);

if String_holder=String_Holder2 then

Put("Arrayerna Matchade:)");

else
Put("Arrayerna Matchade inte :(");

end if;

--Put_Arr(String_Holder);

end main;





















