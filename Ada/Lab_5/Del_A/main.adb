with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

with sorted_list; use sorted_list;


procedure main is

k: List_Type;
e: boolean;

begin

Insert(k, 1);
Insert(k, 3);
Insert(k, 2);
Insert(k, 5);
Insert(k, 4);


Put_List(K);
e:= Member(K, 6);

if e then
  Put("Found");
else
  Put("Not found");
end if;

Remove(K,4);
Put_List(K);


end main;
