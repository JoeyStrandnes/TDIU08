

package body sorted_list is

----------------------------------------------------------
function Empty (k: E_Type)return boolean is

begin --Empt

if K.Pointer = null then

  return True;

else

  return False;

end if;

end Empty;
----------------------------------------------------------
procedure Insert (k: in List_Type; j: in Integer) is

Is_Empty: boolean:= Empty(k);


begin -- Insert



if Is_Empty then
K:= new E_Type;
K.Val_holder:= j;
Put(k.Val_holder);
end if;

end Insert
;
----------------------------------------------------------



end sorted_list;
