with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
use Ada.Float_Text_IO;

procedure Float_Type is
   x: integer;
   y: float;
begin
   get(x);
   get(y); -- ここで 3.2 を入力した場合
   put(item => x, width => 5);
   new_line;
   put(item => y); -- => 3.20000E+00
   new_line;
   put(item => y, fore => 5, aft => 2, exp => 0); -- => 3.20
   new_line;
   put(Float(x) + y, 5, 2, 0); -- int から float への変換
   new_line;
end Float_Type;
