package body Pkg_Add with SPARK_Mode is

   function Add
     (First_Operand  : Integer;
      Second_Operand : Integer) return Integer is
   begin
      return First_Operand + Second_Operand;
   end Add;

end Pkg_Add;
