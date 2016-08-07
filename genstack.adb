with Ada.Text_IO; use Ada.Text_IO;
with generic_stack;

procedure genstack is
    package IIO is new Ada.Text_IO.Integer_IO(integer); use IIO;

    package integer_stack is new generic_stack(100, integer);
    use integer_stack;
    m : integer;
begin
    for i in 1..4 loop
        put("enter an integer "); get(m); push(m);
    end loop;

    for i in 1..4 loop
        put("result of pop "); pop(m); put(m); new_line;
    end loop;
end genstack;