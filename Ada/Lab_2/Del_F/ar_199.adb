with Ada.Text_IO;			    use Ada.Text_IO;

procedure ar_199 (Ri,Gi,Bi,Si: in out integer) is


Rh: integer:= Ri;
Gh: integer:= Gi;
Bh: integer:= Bi;
Sh: integer:= Si;


begin

    Ri:= Sh;
    Gi:= Bh;
    Si:= Gh;
    Ri:= Sh;
    Bi:= Rh;
    --Put_Line("199");

end ar_199;
