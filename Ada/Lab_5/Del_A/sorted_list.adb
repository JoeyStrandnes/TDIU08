

package body sorted_list is

----------------------------------------------------------
function Empty (k: List_Type)return boolean is

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


end if;

end Insert
;
----------------------------------------------------------



end sorted_list;
