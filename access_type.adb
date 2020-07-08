with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Access_Type is
   x, y: access integer;
   -- メモリ上のアドレスを Access 属性で取得するために aliased キーワードをつける
   i: aliased integer;
begin
   x := new integer;
   x.all := 13;
   put(x.all); -- => 13
   new_line;

   i := 5;
   y := i'Access;
   put(y.all); -- => 5;
   new_line;

   i := 15;
   put(y.all); -- => 15;
   new_line;
end Access_Type;
