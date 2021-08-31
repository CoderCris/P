with Pkg_Add;
--with Ada.Text_IO;   use Ada.Text_IO;
package body Pkg_Multiply with SPARK_Mode is

   procedure Multiply
     (First_Operand  : Integer;
      Second_Operand : Integer;
      Result         : out Integer) is

   begin
      Result := 0;
       if First_Operand /= 0 and Second_Operand /= 0 then
         for x in 1 .. abs(Second_Operand) loop
            Result := Pkg_Add.Add( Result, abs(First_Operand));
            pragma Loop_Variant(Increases => Result);

            pragma Loop_Invariant(Result = x * abs(First_Operand));
         end loop;
         if Second_Operand < 0 xor First_Operand < 0 then
            Result := Result * (-1);
         end if;
     end if;

   end Multiply;
end Pkg_Multiply;
