with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Unchecked_Deallocation;



package sorted_list is

type E_Type is private;
type List_Type is private;

function Empty(k: List_Type) return boolean;
function Member (k: List_Type; Key: Integer) return boolean;

procedure Insert(k: in out List_Type; New_Value: in Integer);
Procedure Put_List(k: in List_Type);
Procedure Remove(K: in out List_Type; key: in integer);
private

type List_Type is access E_Type;

type E_Type is record

Val_holder: integer;
Pointer: List_Type;

end record;

end sorted_list;
