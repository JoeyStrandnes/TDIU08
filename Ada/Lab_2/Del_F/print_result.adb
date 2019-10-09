with Ada.Text_IO;			    use Ada.Text_IO;
with Ada.Float_Text_IO;			use Ada.Float_Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;

procedure print_result (Ar,Ri,Gi,Bi,Si, Check: in out integer) is


Rh: integer:= Ri;
Gh: integer:= Gi;
Bh: integer:= Bi;
Sh: integer:= Si;


begin

    if(Check = 1) then
        Ri:= Ri-1;
        Gi:= Gi-1;
    end if;     
    
    Put("År ");
    Put(Ar, width=>0);
    Put(" finns det ");
    Put(Ri, width=>0);
    Put(" röda, ");
    Put(Bi, width=>0);
    Put(" blå, ");
    Put(Si, width=>0);
    Put(" svarta och ");
    Put(Gi, width=>0);
    Put(" gröna kamorfer.");

end print_result;
