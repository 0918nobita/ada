with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Int is
   x: integer;
begin
   put("your number?: ");
   get(x); -- ここで 10 を入力した場合

   put(x + 3); -- => 13
   new_line;
   put(x - 3); -- => 7
   new_line;
   put(x / 3); -- => 3
   new_line;
   put(x rem 3); -- => 1 (剰余)
   new_line;
   put(x * 3); -- => 30
   new_line;
   put(x ** 3); -- => 1000 (べき乗)
   new_line;
end Int;
