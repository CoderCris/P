package Pkg_Divide with SPARK_Mode is
   Last_Quotient  : Integer;
   Last_Remainder : Integer;

   procedure Divide
     (Dividend  : Integer;
      Divisor   : Integer;
      Quotient  : out Integer;
      Remainder : out Integer)
   --  Using the function 'Add' (or the procedure 'Subtract') and a
   --  while-loop-statement, compute the division of First_Operand
   --  by Second_Operand and store the resulting Quotient and
   --  Remainder in the global variables Last_Quotient and
   --  Last_Remainder.
   with
--      Global  => null,
     Depends => (Quotient => (Dividend, Divisor),
                 Remainder => (Dividend, Divisor),
                 Last_Remainder=> (Dividend, Divisor),
                 Last_Quotient=> (Dividend, Divisor)),

     Pre     => Divisor /= 0 and then
                Dividend > Integer'First and then
                Divisor > Integer'First and then
                (if Divisor > 0 and Divisor < 1 then
                    Dividend < Integer'Last * Divisor),
     Post    => Dividend = Divisor * Quotient + Remainder;


end Pkg_Divide;
