-- 変数
-- 定数
with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Variables is
   x: Integer;
   y: constant Integer := 3;
begin
   x := 5;
   put(x);
   new_line; -- => 5

   x := 10;
   put(x, 5); -- 5桁で出力 => 10
   new_line;

   -- Integer 型の Image 属性にアクセスする
   put_line(Integer'Image(x)); -- => 10

   put(y);
   new_line; -- => 3
end Variables;
