with Ada.Text_IO;
use Ada.Text_IO;

procedure Proc is
   -- アクセス修飾子 in / out / in out
   procedure SayHi(name: in string) is
   begin
      put_line("Hi! " & name);
   end SayHi;
begin
   SayHi("Tom");
   SayHi("Bob");
end Proc;
