with Ada.Text_IO; use Ada.Text_IO;
procedure linked_list is
    type node;
    type link is access node;
    type node is
        record
            value: integer;
            rest: String(1..10);
            next: link;
    end record;

    package IIO is new Ada.Text_IO.Integer_IO(integer); use IIO;

    int: integer;
    l: link;
    pt: array(1..10) of link;
    ch: string(1..10);
begin
    --set all values to null
    for i in 1..10 loop pt(i) := null; end loop;
    loop
        put("enter an integer key(1-10), 99 to abort program");
        get(int);
        exit when int = 99;
        put("enter information: ");
        get(ch);
        pt(int) := new node'(int, ch, pt(int));
    end loop;

    --traverse list iteratively
    for i in 1..10 loop
        l := pt(i);
        while l /= null loop
            put(l.value); put(" "); put(l.rest); new_line;
            l := l.next;
        end loop;
    end loop;
end linked_list;