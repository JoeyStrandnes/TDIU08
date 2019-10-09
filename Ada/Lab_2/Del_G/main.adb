with Ada.Text_IO;			    use Ada.Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;

with Ada.Numerics.Discrete_Random;
with tarning;

procedure main is
   
   subtype One_To_Six is
     Integer range 1..6;
   
   package My_Random_Package is
      new Ada.Numerics.Discrete_Random(One_To_Six);
   
   use My_Random_Package;
     
   G : Generator;
   N : Integer;
   J: Integer;
   Sum: Integer;
begin
   Reset(G);        

   Put("Mata in antal slag: ");                
   Get(J);
   for I in 1..J loop
      N := Random(G);
      tarning(N);
      Sum:= Sum+N;
   end loop;
   Put("Summan blev: ");
   Put(Sum, Width => 0);
   
   
   
end main;
