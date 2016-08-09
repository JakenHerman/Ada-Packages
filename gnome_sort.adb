with Ada.Text_IO; use Ada.Text_IO;
procedure gnome_sort is
    package IIO is new Ada.Text_IO.Integer_IO(integer); use IIO;
    type int_array is array (1 .. 10) of integer;

    pos : integer;
    a : int_array;
    buffer : integer;
    user_value : integer;
    procedure sort(a : in out int_array) is
    begin
        pos := 1;
        while pos < 11 loop
            if pos = 1 then
                pos := pos + 1;
            elsif a(pos) >= a(pos-1) then
                pos := pos + 1;
            else
                buffer := a(pos);
                a(pos) := a(pos-1);
                a(pos - 1) := buffer;
                pos := pos - 1;
            end if;
        end loop;

        Print_array:
         for i in integer range 1..10 loop
             put(Integer'Image(a(i))); 
        end loop Print_array;

    end sort;
begin
    Get_values:
        for i in integer range 1..10 loop
            new_line;
            put("input array value" & Integer'Image(i) & ": ");
            get(user_value); new_line;
            a(i) := user_value;
            put("added user value" & Integer'Image(user_value)); new_line;
    end loop Get_values;
    put("original array"); new_line;
    Print_array:
        for i in integer range 1..10 loop
            put(Integer'Image(a(i))); 
    end loop Print_array;
    new_line;
    put_line("sorted array");
    sort(a);
end gnome_sort;
