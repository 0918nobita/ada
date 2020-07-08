with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Exception_Handling is
   i: integer range 1..20;
   three_not_good: exception;
begin
   get(i);
   if i = 3 then
      raise three_not_good;
   end if;
   put(i);
   new_line;
exception
   when CONSTRAINT_ERROR =>
      put_line("not in range!");
   when three_not_good =>
      put_line("not 3!");
end Exception_Handling;
