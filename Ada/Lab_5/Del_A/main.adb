with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

with sorted_list; use sorted_list;


procedure main is

k: List_Type;
e: boolean;
b: integer;

begin

Insert(k, 1);
Insert(k, 3);
Insert(k, 2);
Insert(k, 5);
Insert(k, 4);


Put_List(K);
e:= Member(K, 6);
New_Line(2);
if e then
  Put("Found");
else
  Put("Not found");
end if;

New_Line(2);
Remove(K,4);
Put_List(K);

--New_Line(2);
--Delete(K);
--Put_List(K);

New_Line(2);
Put(Find(K,5));

New_Line(2);
b:=Length(k);
put(b);


end main;
