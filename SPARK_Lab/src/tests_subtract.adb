--  Add as many tests as you want to ensure that the calculator
--  behavior is correct in all cases.

with Ada.Text_IO;  use Ada.Text_IO;
with Pkg_Subtract; use Pkg_Subtract;

procedure Tests_Subtract is

   procedure Test_1 is
      Result : Integer;
   begin
      Put ("Test 1: 3 - 4 ....................................");

      Subtract (3, 4, Result);
      pragma Assert (Result = -1);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Result : Integer;
   begin
      Put ("Test 2: 3 - (-4) .................................");

      Subtract (3, -4, Result);
      pragma Assert (Result = 7);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Result : Integer;
   begin
      Put ("Test 3: -5 - 2 ...................................");

      Subtract (-5, 2, Result);
      pragma Assert (Result = -7);

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      Result : Integer;
   begin
      Put ("Test 4: (-5) - (-2) ..............................");

      Subtract (-5, -2, Result);
      pragma Assert (Result = -3);

      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      Result : Integer;
   begin
      Put ("Test 5: 3 - 0 ....................................");

      Subtract (3, 0, Result);
      pragma Assert (Result = 3);

      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      Result : Integer;
   begin
      Put ("Test 6: 0 - 4 ....................................");

      Subtract (0, 4, Result);
      pragma Assert (Result = -4);

      Put_Line ("OK");
   end Test_6;

begin
   Put_Line ("********************* Tests_Subtract");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
end Tests_Subtract;
