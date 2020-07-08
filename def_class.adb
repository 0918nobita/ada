with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Def_Class is
   package User_Package is
      type User is tagged private;

      procedure setScore(u: in out User; s: integer);

      function getScore(u: in User) return integer;

      function getName(u: in User) return string;

   private
      type User is tagged record
         score: integer;
      end record;
   end User_Package;

   package body User_Package is
      procedure setScore(u: in out User; s: integer) is
      begin
         u.score := s;
      end setScore;

      function getScore(u: in User) return integer is
      begin
         return u.score;
      end getScore;

      function getName(u: in User) return string is
      begin
         return "i am user!";
      end getName;
   end User_Package;

   use User_Package;

   package Admin_User_Package is
      type Admin_User is new User with private;

      procedure setLevel(a: in out Admin_User; l: integer);

      function getName(a: in Admin_User) return string;

   private
      type Admin_User is new User with record
         level: integer;
      end record;
   end Admin_User_Package;

   package body Admin_User_Package is
      procedure setLevel(a: in out Admin_User; l: integer) is
      begin
         a.level := 1;
      end setLevel;

      function getName(a: in Admin_User) return string is
      begin
         return "i am admin user, level: " & Integer'Image(a.level);
      end getName;
   end Admin_User_Package;

   use Admin_User_Package;

   tom: User;
   bob: Admin_User;
begin
   setScore(tom, 20);
   bob.setScore(55);
   bob.setLevel(3);

   put(getScore(tom));
   new_line;

   put(bob.getScore);
   new_line;

   put(tom.getName);
   new_line;

   put(bob.getName);
   new_line;

   put_line("hello");
end Def_Class;
