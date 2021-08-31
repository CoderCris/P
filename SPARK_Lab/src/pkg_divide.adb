with Pkg_Add;
with Pkg_Subtract;
--with Ada.Text_IO;   use Ada.Text_IO;

package body Pkg_Divide with SPARK_Mode is

   procedure Divide
     (Dividend  : Integer;
      Divisor   : Integer;
      Quotient  : out Integer;
      Remainder : out Integer) is

      diven_sign : constant Boolean := Dividend >= 0;
      disor_sign : constant Boolean := Divisor >= 0;
   begin
      Quotient := 0;
      Remainder := abs(Dividend);

      if Divisor /= 0 then
         while Remainder >= abs(Divisor) loop
            Quotient := Pkg_Add.Add(Quotient, 1);
            Pkg_Subtract.Subtract(Remainder, abs(Divisor), Remainder);

            pragma Loop_Variant(Decreases => Remainder);
            pragma Loop_Invariant(Remainder in 0..abs(Dividend));
            pragma Loop_Invariant(abs(Dividend) = Remainder + Quotient * abs(Divisor));
         end loop;
      end if;

      if not diven_sign then
         Remainder := -Remainder;
      end if;

      if diven_sign xor disor_sign then
         Quotient := -Quotient;
      end if;
      Last_Quotient := Quotient;
      Last_Remainder := Remainder;
   end Divide;

end Pkg_Divide;
