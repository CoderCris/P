with  Pkg_Add;
package body Pkg_Subtract with SPARK_Mode is

   procedure Subtract
     (First_Operand  : Integer;
      Second_Operand : Integer;
      Result         : out Integer) is
   begin
      Result := Pkg_Add.Add(First_Operand, (- Second_Operand));
   end Subtract;

end Pkg_Subtract;
