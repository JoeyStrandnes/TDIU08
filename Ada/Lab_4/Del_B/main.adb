with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;


procedure main is

type Year_Type is record
Y: integer:= 0;
M: integer:= 0;
D: integer:= 0;
end record;


type Month_Size is array (1..12) of integer;
Day: Month_Size:= (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

----------------------------------------------------------
procedure Get_Time(i: out Year_Type) is

G: character;

begin

 Get(i.Y);
 Get(G);
 Get(i.M);
 Get(G);
 Get(i.D);

end Get_Time;
----------------------------------------------------------

procedure Put_Time(i: in Year_Type) is


begin

 Put(i.Y, 0);
 Put("-");
 if i.M < 10 then
    Put("0");
 end if;
 Put(i.M, 0);
 Put("-");
 if i.D < 10 then
    Put("0");
 end if;
 Put(i.D, 0);

end Put_Time;
----------------------------------------------------------
function Next_Date (i: Year_Type) return Year_Type is

k: Year_Type;


begin
k:=i;

if (k.D)+1 > Day(k.M) then

    k.M:= k.M +1;
    k.D:= 0;

end if;

if 12 < k.M then

    k.Y:= k.Y+1;

end if;

if k.M > 12 then
   k.M:= 1;
end if;

k.D:= k.D +1;

return k;

end Next_Date;


----------------------------------------------------------
function Previous_Date (i: Year_Type) return Year_Type is

k: Year_Type;


begin
k:=i;



if (k.D)-1 = 0 then

    k.M:= k.M -1;

    if k.M = 0 then

    k.Y:= k.Y-1;

    end if;

    if k.M = 0 then
    k.M:=12;
    end if;
    if k.M = 1 then

    k.Y:= k.Y-1;

end if;
    k.D:= Day(k.M);

end if;



if k.M > 12 then
   k.M:= 1;
end if;

k.D:= k.D -1;

return k;

end Previous_Date;


----------------------------------------------------------

Date: Year_Type;

begin

Put("Ange ett datum: ");
Get_Time(Date);

--Date:= Next_Date(Date);
Date:= Previous_Date(Date);

Put("Ett datum: ");
Put_Time(Date);


end main;
