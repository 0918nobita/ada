with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Repeat is
   count: integer;
   j: integer := 1;
   k: integer := 1;
begin
   put("Count: ");
   get(count);
   for i in 1..count loop
      put(i, 3);
   end loop;
   new_line;

   for i in reverse 1..count loop
      put(i, 3);
   end loop;
   new_line;

   while j <= count loop
      put(j, 3);
      j := j + 1;
   end loop;
   new_line;

   loop
      put(k, 3);
      k := k + 1;
      exit when k > count;
   end loop;
   new_line;
end Repeat;
