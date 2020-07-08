with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Cond is
   score: integer;
begin
   get(score);

   -- > < >= <= = /=
   if score > 80 then
      put_line("great!");
   elsif score > 60 then
      put_line("good");
   else
      put_line("...");
   end if;

   case score is
      when 1 =>
         put_line("one!");
      when 2 =>
         put_line("two!");
      when 3 =>
         put_line("three!");
      when others =>
         put_line("other!");
   end case;
end Cond;
