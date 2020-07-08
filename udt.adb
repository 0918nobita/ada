procedure UDT is
   type Score is range 1..100;
   x: Score;

   type Youbi is (Mon, Tue, Wed, Thu, Fri, Sat, Sun);
   subtype Weekday is Youbi range Mon..Fri;
   subtype Weekend is Youbi range Sat..Sun;

   d: Weekday;
begin
   x := 80;
   -- x := 150; -- compilation error
   d := Mon;
   -- d := Sat; -- compilation error
end UDT;
