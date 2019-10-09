with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure main is

    function failSafe (A : in float) return float is
    holder: float;
    begin
        loop
            get(holder);
            if holder>0.0 and holder > A then
                return holder;
            end if;
         Put("Felaktig inamtning, försök igen: ");  
    end loop;
    end failSafe;


    procedure write (Fo, Si, St, Pe : in float) is
        holder: float:= Fo;
    begin
        
    while holder <= Si loop
    
        Put(holder, fore => 6, aft =>2, exp => 0);
        Put((holder*Pe/100.0), fore => 7, aft =>2, exp => 0);
        Put((holder*(Pe/100.0))+holder, fore => 7, aft =>2, exp => 0);
        New_Line(1);
        holder := holder + St;
        
    end loop;
    
    end write;


    procedure redirect (Fo, Si, St, Pe : in float) is
    
    begin
        Put_Line("Pris utan moms Moms Pris med moms");
        write(Fo, Si, St, Pe);
    
    end redirect;
 
    Forsta_Pris : float;
    hlimit : float;
    step : float;
    percent : float;

begin
    
    put("Första pris: ");
    Forsta_Pris:= failSafe(Forsta_Pris);
    put(Forsta_Pris);
    New_Line(1);
    
    put("Sista pris: ");
    hlimit:= failSafe(Forsta_Pris);
    put(hlimit);
    New_Line(1);
    
    put("Steg: ");
    step:= failSafe(0.0);
    put(step);
    New_Line(1);
    
    put("Moms: ");
    percent:= failSafe(0.0);
    put(percent);
    New_Line(1);
    
    redirect(Forsta_Pris, hlimit, step, percent);
    
    --put("(✿ ◕‿◕) ᓄ✂╰U╯");
    

end main;
