with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;



package date_handler is

type Year_Type is private;

procedure Put_Time(i: in Year_Type);
procedure Get_Time(i: out Year_Type);
function Next_Date (i: Year_Type) return Year_Type;
function Previous_Date (i: Year_Type) return Year_Type;

private 

type Year_Type is record 
Y: integer:= 0;
M: integer:= 0;
D: integer:= 0;
end record;


type Month_Size is array (1..12) of integer;
Day: Month_Size:= (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

end date_handler;
