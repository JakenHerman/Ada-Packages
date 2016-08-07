package body generic_stack is
    s:array(1..max) of item;
    top: integer range 0..max;

    procedure push(x:in item)is
    begin
        top := top + 1; s(top) :=x;
    end push;

    procedure pop(x:out item)is
    begin
        x:=s(top); top :=top-1;
    end pop;
begin
    top := 0; --initialize top of stack to empty
end generic_stack;