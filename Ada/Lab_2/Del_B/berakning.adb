with Ada.Text_IO;			    use Ada.Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;



function berakning (A: integer) return integer is


Fakultet: integer:= A;

begin

    for i in reverse 2..A loop
        Fakultet:= (Fakultet*(i-1));
    end loop;

    return Fakultet;
    
end berakning;
     
     
