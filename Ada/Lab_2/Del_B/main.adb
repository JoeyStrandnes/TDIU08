with Ada.Text_IO;			    use Ada.Text_IO;
with Ada.Float_Text_IO;			use Ada.Float_Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;

with berakning;

procedure main is
   
   Choice : Integer;
   A, B   : Integer;
   X, Y   : Float;
   
   
   
function addera (A, B: integer) return integer is


begin
    
    
    return A+B;
    
end addera;


function "+" (A: integer; B: float) return float is


begin
    
    
    
    return float(A)+B;
    
end "+";

function "+" (A: float; B: integer) return float is


begin
    
    
    
    return float(B)+A;
    
end "+";

function addera_flyt1 (A: integer ; B: float) return float is


begin
    
    
    
    return float(A)+B;
    
end addera_flyt1;

function addera_flyt2 (A: float ; B: float) return float is


begin
    
    
    
    return A+B;
    
end addera_flyt2;


 
begin
   Put_Line("Välkommen till miniräknaren!");
   loop
      Put_Line("1. Beräkna N-fakultet.");
      Put_Line("2. Addera två heltal.");
      Put_Line("3. Addera heltal med flyttal.");
      Put_Line("4. Addera flyttal med heltal.");
      Put_Line("5. Addera två flyttal.");
      Put_Line("6. Avsluta.");
      Put("Välj ett alternativ: ");
      Get(Choice);
      New_Line;
      exit when Choice = 6;
      
      if Choice = 1 then
	 Put("Mata in ett heltal: ");
	 Get(A);

	 Put(A, Width => 0);
	 Put("! = ");
	 ---
	 Put(berakning(A), width => 1);
	 ----------------------------------------------------
	 
      elsif Choice = 2 then
	 Put("Mata in två heltal: ");
	 Get(A);
	 Get(B);
	 
	 Put(A, Width => 0);
	 Put(" + ");
	 Put(B, Width => 0);
	 Put(" = ");
	 ---
	 Put(addera(A, B), Width => 0);
	 ----------------------------------------------------
	 
      elsif Choice = 3 then
	 Put("Mata in ett heltal och ett flyttal: ");
	 Get(A);
	 Get(X);
	 
	 Put(A, Width => 0);
	 Put(" + ");
	 Put(X, Fore => 0, Aft => 2, Exp => 0);
	 Put(" = ");
	 ---
	 Put((A+X), aft => 2, exp => 0);
	 ----------------------------------------------------
	 
      elsif Choice = 4 then
	 Put("Mata in ett flyttal och ett heltal: ");
	 Get(X);
	 Get(A);
	 
	 Put(X, Fore => 0, Aft => 2, Exp => 0);
	 Put(" + ");
	 Put(A, Width => 0);
	 Put(" = ");
	 ---
	 Put((A+X), aft => 2, exp => 0);
	 ----------------------------------------------------
	 
	 
      elsif Choice = 5 then
	 Put("Mata in två flytal: ");
	 Get(X);
	 Get(Y);
	 
	 Put(X, Fore => 0, Aft => 2, Exp => 0);
	 Put(" + ");
	 Put(Y, Fore => 0, Aft => 2, Exp => 0);
	 Put(" = ");
	 ---
	 Put(addera_flyt2(X, Y), aft => 2, exp => 0);
	 ----------------------------------------------------
	 
      end if;
      New_Line(2);
   end loop;
   Put_Line("Hejdå, vi ses nästa gång!");
      
end main;
     
     
