with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;



package sorted_list is

type E_Type is private;
type List_Type is private;

procedure Insert(k: in out List_Type; New_Value: in Integer);
function Empty(k: List_Type) return boolean;
Procedure Put_List(k: in List_Type);

private

type List_Type is access E_Type;

type E_Type is record

Val_holder: integer;
Pointer: List_Type;

end record;

end sorted_list;
