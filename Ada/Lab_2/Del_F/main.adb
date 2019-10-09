with Ada.Text_IO;			    use Ada.Text_IO;
with Ada.Float_Text_IO;			use Ada.Float_Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;
with Ada.Command_Line;          use Ada.Command_Line;

with ar_67;
with ar_101;
with ar_199;
with print_result;

procedure main is
   
Rod: integer:= 31;
Gron: integer:= 104;
Bla: integer:= 6;
Svart: integer:= 55;
 
Antal_Ar: integer;
Check: integer;

begin

    
   
    Antal_Ar:= Integer'Value(Argument(1));
    
    
    
    for i in 1..Antal_Ar loop
    
        if((i mod 67) = 0) then
            Ar_67(Rod, Gron, Bla, Svart);
            
        elsif((i mod 101) = 0) then
            ar_101(Rod, Gron, Bla, Svart);
            
        elsif((i mod 199) = 0) then
            ar_199(Rod, Gron, Bla, Svart);
            Check:= 1;
        else
            Rod:= Rod+1;
            Gron:= Gron+1;
            
        end if;

    
    end loop;
    
    print_result(Antal_Ar,Rod, Gron, Bla, Svart, Check);

      
end main;
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
