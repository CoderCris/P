--  Add as many tests as you want to ensure that the calculator
--  behavior is correct in all cases.

with Ada.Text_IO; use Ada.Text_IO;
with Pkg_Add;     use Pkg_Add;

procedure Tests_Add is

   procedure Test_1 is
   begin
      Put ("Test 1: 3 + 4 ....................................");

      pragma Assert (Add (3, 4) = 7);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
   begin
      Put ("Test 2: 3 + (-4) .................................");

      pragma Assert (Add (3, -4) = -1);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
   begin
      Put ("Test 3: -5 + 2   .................................");

      pragma Assert (Add (-5, 2) = -3);

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
   begin
      Put ("Test 4: (-5) + (-2) ..............................");

      pragma Assert (Add (-5, -2) = -7);

      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
   begin
      Put ("Test 5: 3 + 0 ....................................");

      pragma Assert (Add (3, 0) = 3);

      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
   begin
      Put ("Test 6: 0 + 4 ....................................");

      pragma Assert (Add (0, 4) = 4);

      Put_Line ("OK");
   end Test_6;

begin
   Put_Line ("********************* Tests_Add");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
end Tests_Add;
