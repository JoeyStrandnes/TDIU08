with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;


procedure main is

type Year_Type is record 
Y: integer:= 0;
M: integer:= 0;
D: integer:= 0;
end record;

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

Date: Year_Type;

begin

Put("Ange ett datum: ");
Get_Time(Date);

Put("Ett datum: ");
Put_Time(Date);


end main;





















