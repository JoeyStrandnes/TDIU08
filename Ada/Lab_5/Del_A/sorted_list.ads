with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;



package sorted_list is private;

type List_Type is private;


private

type Pointer_type is access Integer;

type List_Type is record

Val_holder: integer;
Pointer:= Pointer_type;

end record;

end sorted_list;
