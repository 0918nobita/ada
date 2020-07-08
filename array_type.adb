with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Array_Type is
   type Sales is array(1..3) of integer; -- 要素数が 3
   s: Sales;
begin
   s(1) := 200;
   s(2) := 150;
   s(3) := 40;
   -- s := (200, 150, 40);

   -- for i in 1..3 loop
   for i in s'Range loop
      put(s(i));
      new_line;
   end loop; -- => 200, 150, 40

   put(s'First); -- => 1
   new_line;

   put(s'Last); -- => 3
   new_line;

   put(s'Length); -- => 3
   new_line;
end Array_Type;
