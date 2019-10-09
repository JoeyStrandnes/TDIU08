with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with date_handler; use date_handler;

procedure main is

type Month_Size is array (1..12) of integer;
Day: Month_Size:= (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

Date1: Year_type;
Date2: Year_type;

Year1, Month1, Dag1, Total_Days1: Integer;
Year2, Month2, Dag2, Total_Days2: Integer;

Month: integer;
begin

Put("Mata in dagens datum: ");
Get_Time(Date1);
Put("Mata in ett annat datum: ");
Get_Time(Date2);



Year1:= Get_Year(Date1);
Month1:= Get_Month(Date1);
Dag1:= Get_Day(Date1); 

Year2:= Get_Year(Date2);
Month2:= Get_Month(Date2);
Dag2:= Get_Day(Date2); 

month:= 0;



Year1:= Year1*365;

for i in (1)..(Month1) loop
Month:= Month + Day(i);
end loop;

Total_Days1:= Year1 + Month + Dag1;

Month:= 0; 

Year2:= Year2*365;

for i in (1)..(Month2) loop
Month:= Month + Day(i);
end loop;

Total_Days2:= Year2 + Month + Dag2;

Put("Det andra datumet är ");

if Total_Days1 < Total_Days2 then
Put(abs(Total_Days1 - Total_Days2),1);
Put("dagar innan det första");

else
Put(abs(Total_Days1 - Total_Days2),1);
Put(" dagar efter det första");
end if;


--Put_Time(Date);
--New_Line(1);
--Date:= Previous_Date(Date);
--Put_Time(Date);

end main;





























