with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Chars is
   c: character;
   s: string(1..12);
begin
   c := 'a';
   s := "hello world!";

   put(c); -- => a
   new_line;

   put_line(c & "gain!"); -- => again!

   s(1) := 'H';
   put_line(s); -- => Hello world!

   put_line(s(7..11)); -- => world
end Chars;
