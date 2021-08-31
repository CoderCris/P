--  Add as many tests as you want to ensure that the calculator
--  behavior is correct in all cases.

with Ada.Text_IO;       use Ada.Text_IO;
with Pkg_Divide;        use Pkg_Divide;
with System.Assertions;

procedure Tests_Divide is

   procedure Test_1 is
      Quotient  : Integer;
      Remainder : Integer;
   begin
      Put ("Test 1: 10 / 2 ...................................");

      Divide (10, 2, Quotient, Remainder);
      pragma Assert (Quotient = 5);
      pragma Assert (Remainder = 0);
      pragma Assert (Last_Quotient = Quotient);
      pragma Assert (Last_Remainder = Remainder);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Quotient  : Integer;
      Remainder : Integer;
   begin
      Put ("Test 2: 13 / 2 ...................................");

      Divide (13, 2, Quotient, Remainder);
      pragma Assert (Quotient = 6);
      pragma Assert (Remainder = 1);
      pragma Assert (Last_Quotient = Quotient);
      pragma Assert (Last_Remainder = Remainder);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Quotient  : Integer;
      Remainder : Integer;
   begin
      Put ("Test 3: 13 / (-2) ................................");

      Divide (13, -2, Quotient, Remainder);
      pragma Assert (Quotient = -6);
      pragma Assert (Remainder = 1);
      pragma Assert (Last_Quotient = Quotient);
      pragma Assert (Last_Remainder = Remainder);

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      Quotient  : Integer;
      Remainder : Integer;
   begin
      Put ("Test 4: -13 / 2 ..................................");

      Divide (-13, 2, Quotient, Remainder);
      pragma Assert (Quotient = -6);
      pragma Assert (Remainder = -1);
      pragma Assert (Last_Quotient = Quotient);
      pragma Assert (Last_Remainder = Remainder);

      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      Quotient  : Integer;
      Remainder : Integer;
   begin
      Put ("Test 5: -13 / -2 .................................");

      Divide (-13, -2, Quotient, Remainder);
      pragma Assert (Quotient = 6);
      pragma Assert (Remainder = -1);
      pragma Assert (Last_Quotient = Quotient);
      pragma Assert (Last_Remainder = Remainder);

      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      Quotient  : Integer;
      Remainder : Integer;
   begin
      Put ("Test 6: 0 * 4 ....................................");

      Divide (0, 4, Quotient, Remainder);
      pragma Assert (Quotient = 0);
      pragma Assert (Remainder = 0);
      pragma Assert (Last_Quotient = Quotient);
      pragma Assert (Last_Remainder = Remainder);

      Put_Line ("OK");
   end Test_6;

   procedure Test_7 is
      Quotient  : Integer;
      Remainder : Integer;
   begin
      Put ("Test 7: 3 / 0 ....................................");

      Divide (3, 0, Quotient, Remainder);
      Put_Line ("FAILED");
   exception
      when System.Assertions.Assert_Failure =>
         Put_Line ("OK"); -- The precondition must fail in this case!
   end Test_7;

begin
   Put_Line ("********************* Tests_Divide");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
   Test_7;
end Tests_Divide;
