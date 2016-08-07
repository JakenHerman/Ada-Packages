generic
    max : integer; -- size of stack
    type item is private; -- type of stack

package generic_stack is
    procedure push(x : in item);
    procedure pop(x : out item);
end generic_stack;