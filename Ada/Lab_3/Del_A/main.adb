with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;



procedure main is

type Ten_Ints_Array_Type is Array (1..10) of integer;


----------------------------------------------------------
function Get return Ten_Ints_Array_Type is

TenIntsArray: Ten_Ints_Array_Type;

begin

for i in Ten_Ints_Array_Type'Range loop

Get(TenIntsArray(i));

end loop;


return TenIntsArray;

end Get;
----------------------------------------------------------

procedure Put (K: in Ten_Ints_Array_Type) is



begin

for i in Ten_Ints_Array_Type'Range loop

Put(K(i),2);
Put("|");
end loop;

end Put;
----------------------------------------------------------

function Find_Max(K: in Ten_Ints_Array_Type) return integer is

Max_val: integer:= 0;
Index: integer;

begin

for i in Ten_Ints_Array_Type'Range loop

if (K(i) > Max_Val) then

Max_Val:=K(i); 
Index:= i;

end if;

end loop;

New_Line(2);
Put("Index: ");
Put(Index, 2);
Put(" Värde: ");
return Max_Val;

end Find_Max;
----------------------------------------------------------
procedure Put_Rev (K: in Ten_Ints_Array_Type) is



begin

for i in reverse Ten_Ints_Array_Type'Range loop

Put(K(i),2);
Put("|");
end loop;

end Put_Rev;

----------------------------------------------------------
function Rev_Arr (TenIntsArray: in Ten_Ints_Array_Type) return Ten_Ints_Array_Type is


Holder: Ten_Ints_Array_Type;

begin

for i in reverse Ten_Ints_Array_Type'Range loop


Holder((Ten_Ints_Array_Type'Length+1)-i):=TenIntsArray(i);


end loop;


return Holder;

end Rev_Arr;
----------------------------------------------------------
TenIntsArray: Ten_Ints_Array_Type;

Max_Value: integer;
    
begin



TenIntsArray:=Get;
Put(TenIntsArray);
New_Line(1);
--Put_Rev(TenIntsArray);
TenIntsArray:=Rev_Arr(TenIntsArray);
Put(TenIntsArray);

Max_Value:= Find_Max(TenIntsArray);
Put(Max_Value, 5);


end main;


























