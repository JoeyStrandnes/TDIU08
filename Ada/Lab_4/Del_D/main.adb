with Ada.Text_IO; use Ada.Text_IO;
with date_handler; use date_handler;

procedure main is

Date1: Year_type;
Date2: Year_type;

begin



Get_Time(Date1);
Get_Time(Date2);
--Put_Time(Date);
--New_Line(1);
--Date:= Previous_Date(Date);
--Put_Time(Date);

if Date1 > Date2 then
Put("True");
end if;

if Date1 < Date2 then
Put("True");
end if;

if Date1 = Date2 then
Put("True");
end if;

end main;
