with Ada.Text_IO; use Ada.Text_IO;

with Searching; use Searching;


procedure Searching_tests is

   procedure Min_test is

      procedure Test_1 is

         Table: T_Table (1 .. 5) := (0, 1, 2, 3, 4);
      begin
          Put ("Test_1: Minimum ......................... ");
          pragma Assert (Minimum (Table) = 0);
          Put_Line ("OK");
      end Test_1;

   begin
      Put_Line(" ");
      Put_Line("--------------- Minimum Tests --------------");
     Test_1;
   end Min_test;

   --  procedure Pos_Min_test is
   --
   --     procedure Test_1 is
   --        Table: T_Table (0..4) := (0, 1, 2, 3, 4);
   --     begin
   --        Put ("Test_1: Minimum ......................... ");
   --        pragma Assert (Pos_Minimum(Table) = 0);
   --        Put_Line ("OK");
   --     end Test_1;
   --
   --  begin
   --     Put_Line(" ");
   --     Put_Line("--------------- Pos_Minimum Tests --------------");
   --     Test_1;
   --  end Pos_Min_test;

   procedure Linear_Search_test is
      procedure Test_1 is
         Table: T_Table (1 .. 5) := (0, 1, 2, 3, 4);
      begin
         Put ("Test_1: Minimum ......................... ");
         pragma Assert (Minimum (Table) = 0);
         Put_Line ("OK");
      end Test_1;

   begin
      Put_Line(" ");
      Put_Line("--------------- Linear Search Tests --------------");
      Test_1;
   end Linear_Search_test;


   procedure Binary_Search_test is
      procedure Test_1 is
      begin
      end Test_1;

   begin
      Put_Line(" ");
      Put_Line("--------------- Binary Search Tests --------------");
      Test_1;

   end Binary_Search_test;



begin

   -- Min_test;
   -- Pos_Min_test;

end Searching_tests;
