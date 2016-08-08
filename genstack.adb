with Ada.Text_IO; use Ada.Text_IO;
with generic_stack;

procedure genstack is
    package IIO is new Ada.Text_IO.Integer_IO(integer); use IIO;

    package integer_stack is new generic_stack(100, integer);
    use integer_stack;
    m : integer;
    user_value : integer;
begin
    put("How much (M)emory to allocate? "); get(m);
    for i in 1..4 loop
        put("enter an integer "); get(user_value); push(user_value);
    end loop;

    for i in 1..4 loop
        put("result of pop "); pop(user_value); put(user_value); new_line;
    end loop;
end genstack;