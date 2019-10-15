

package body sorted_list is

Procedure Free is new Ada.Unchecked_Deallocation(E_Type, List_Type);

----------------------------------------------------------
function Empty (k: List_Type)return boolean is

begin --Empt

if K = null then

  return True;

else

  return False;

end if;

end Empty;
----------------------------------------------------------
procedure Insert (k: in out List_Type; New_Value: in Integer) is

Is_Empty: boolean:= Empty(k);

Temp_Holder: List_Type;

begin -- Insert

if Is_Empty then
K:= new E_Type;
K.Val_holder:= New_Value;
K.Pointer:= null;

elsif New_Value < K.Val_holder then
Temp_Holder:= K;
K:= new E_Type;

K.Val_holder:= New_Value;
K.Pointer:= Temp_Holder;


elsif New_Value = K.Val_holder then
  return;

else
  Insert(K.Pointer, New_Value);

end if;

end Insert;
----------------------------------------------------------
procedure Put_List (k: in List_Type) is

Temp_List: List_Type:= K;
Is_Empty: boolean:= Empty(k);
begin -- Put

if not Is_Empty then
Put(Temp_List.Val_holder);
Put_List(Temp_List.Pointer);
end if;

end Put_List;
----------------------------------------------------------
function Member (k: List_Type; Key: Integer) return boolean is

Temp_List: List_Type:= K;
Is_Empty: boolean:= Empty(k);
dummy: boolean;
begin -- Member

if not Is_Empty then
  if K.Val_holder = Key then
    return True;
  end if;
  dummy:= Member(K.Pointer, Key);
end if;

return dummy;



end Member;
----------------------------------------------------------
procedure Remove (k: in out List_Type; Key: in Integer) is

Is_Empty: boolean:= Empty(k);

Temp_Holder: List_Type;

begin

  if not Is_Empty then
    if K.Val_holder = Key then
      Temp_Holder:= K;
      K:=Temp_Holder.Pointer;
      Free(Temp_Holder);

    end if;

    Remove(K.pointer, Key);
  end if;

end Remove;
----------------------------------------------------------

end sorted_list;
