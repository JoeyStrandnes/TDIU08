

package body date_handler is


                                   
----------------------------------------------------------
procedure Get_Time(i: out Year_Type) is 

G: character;

begin
 
 
   
 Get(i.Y);
 Get(G);
 Get(i.M);
 if i.M>12 or i.M<1 then
    raise Month_Error;
 end if;
 Get(G);
 Get(i.D);
 if i.D>Day(i.M) or i.D<1 then
    raise Day_Error;
 end if;
 
end Get_Time;
----------------------------------------------------------



----------------------------------------------------------

procedure Put_Time(i: in Year_Type) is 


begin
  
 Put(i.Y, 0);
 Put("-");
 if i.M < 10 then
    Put("0");
 end if;
 Put(i.M, 0);
 Put("-");
 if i.D < 10 then
    Put("0");
 end if;
 Put(i.D, 0);
 
end Put_Time;
----------------------------------------------------------
function Next_Date (i: Year_Type) return Year_Type is

k: Year_Type;


begin
k:=i;

if (k.D)+1 > Day(k.M) then

    k.M:= k.M +1;  
    k.D:= 0;  

end if;

if 12 < k.M then

    k.Y:= k.Y+1;  
    
end if;

if k.M > 12 then
   k.M:= 1;
end if;
    
k.D:= k.D +1;

return k;

end Next_Date;


----------------------------------------------------------
function Previous_Date (i: Year_Type) return Year_Type is

k: Year_Type;


begin
k:=i;



if (k.D)-1 = 0 then

    k.M:= k.M -1;
    
    if k.M = 0 then

    k.Y:= k.Y-1;  
    
    end if;    
    
    if k.M = 0 then
    k.M:=12;
    end if;  
    if k.M = 1 then

    k.Y:= k.Y-1;  
    
end if;
    k.D:= Day(k.M);  

end if;



if k.M > 12 then
   k.M:= 1;
end if;
    
k.D:= k.D -1;

return k;

end Previous_Date;


----------------------------------------------------------
function "<" (L,R: Year_Type) return boolean is



begin

if L.Y < R.Y then

return True;
end if;

if L.M < R.M and L.Y = R.Y then
return True;
end if;

if L.D < R.D and L.M = R.M and L.Y = R.Y then
return True;
end if;

return False;

end "<"; 
----------------------------------------------------------


function ">" (L,R: Year_Type) return boolean is



begin

if L.Y > R.Y then

return True;
end if;

if L.M > R.M and L.Y = R.Y then
return True;
end if;

if L.D > R.D and L.M = R.M and L.Y = R.Y then
return True;
end if;

return False;

end ">"; 
----------------------------------------------------------

function "=" (L,R: Year_Type) return boolean is



begin

if L.D = R.D and L.M = R.M and L.Y = R.Y then
return True;
end if;

return False;


end "="; 
----------------------------------------------------------
Date: Year_Type;

i: integer;
begin

i:= 0;


end date_handler;





























































