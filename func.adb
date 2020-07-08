with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Func is
   function Double(a: in integer) return integer is
   begin
      return a * 2;
   end Double;

   x: integer;
begin
   get(x);
   put(Double(x));
   new_line;
end Func;
