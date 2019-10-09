with Ada.Text_IO;			    use Ada.Text_IO;


procedure ar_101 (Ri,Gi,Bi,Si: in out integer) is


Rh: integer:= Ri;
Gh: integer:= Gi;
Bh: integer:= Bi;
Sh: integer:= Si;

begin
    Gi:= 0;
    
    Gi:= Sh;
    Si:= Bh;
    Bi:= Rh;
    Ri:= 0;
   
    --Put_Line("101");

end ar_101;
