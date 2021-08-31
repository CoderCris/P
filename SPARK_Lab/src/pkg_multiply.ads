package Pkg_Multiply with SPARK_Mode is

   procedure Multiply
     (First_Operand  : Integer;
      Second_Operand : Integer;
      Result         : out Integer)
   --  Using the function 'Add' and a for-loop statement, compute the
   --  multiplication of First_Operand by Second_Operand
   with
      Global  => null,
      Depends => (Result => (First_Operand, Second_Operand)),
       Pre  => First_Operand /= Integer'First and then
               Second_Operand /= Integer'First and then


         (if First_Operand > 0 and then Second_Operand > 0 then
                  First_Operand <= Integer'Last/Second_Operand

               elsif First_Operand < 0 and then Second_Operand < 0 then
               abs(First_Operand) <= Integer'Last/abs(Second_Operand)

               elsif First_Operand < 0 and then Second_Operand > 0 then
               abs(First_Operand) <= Integer'Last/Second_Operand

               elsif First_Operand > 0 and then Second_Operand < 0 then
               First_Operand <= Integer'Last/abs(Second_Operand)
         ),
      Post => Result = First_Operand * Second_Operand;

end Pkg_Multiply;
