with Ada.Text_IO;			    use Ada.Text_IO;



procedure tarning(num: in integer) is




begin

if num = 1 then
    put_line("+-----+");
    put_line("|     |");
    put_line("|  *  |");
    put_line("+-----+");
    
elsif num =2 then

    put_line("+-----+");
    put_line("| *   |");
    put_line("|   * |");
    put_line("+-----+");

elsif num =3 then

    put_line("+-----+");
    put_line("|*   *|");
    put_line("|  *  |");
    put_line("+-----+");

elsif num =4 then

    put_line("+-----+");
    put_line("| * * |");
    put_line("| * * |");
    put_line("+-----+");

elsif num =5 then

    put_line("+-----+");
    put_line("|* * *|");
    put_line("| * * |");
    put_line("+-----+");

elsif num =6 then

    put_line("+-----+");
    put_line("|* * *|");
    put_line("|* * *|");
    put_line("+-----+");

end if;



end tarning;







































