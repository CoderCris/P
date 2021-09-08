package Searching with SPARK_Mode is

   type T_Table is array (Natural range <>) of Integer;

   -- Returns the smallest value stored in the table
   function Minimum (Table : T_Table) return Integer
     with

       Global => null,
       Depends => (Minimum'Result => Table),
       Pre => Table'Length > 0,
       Post => (for all J in Table'Range => Minimum'Result <= Table(J));


   --  !! ERROR !!: en la postcondición
  --  function Pos_Minimum (Table : T_Table) return Natural
  --    with
  --    --  Returns the index of the smallest element of Table
  --      Global => null,
  --      Depends => (Pos_Minimum'Result => Table),
  --     Pre => Table'Length > 0
  --       and then Table'Last /= Natural'Last,
  --     Post => Pos_Minimum'Result in Table'Range and then
  --        (for all J in Table'Range =>
  --                Table(Pos_Minimum'Result) <= Table(J)) ;


--   function Linear_Search
   --    (Table : T_Table; Value : Integer) return Integer;
   --  --  Searchs for Value performing a linear search and returns
   --  --  its index in the given table; returns Integer'First if the
   --  --  specified value is not found in the table.
--

   --  Searchs for Value performing a binary search and returns
   --  its index in the given table; returns Integer'First if the
   --  specified value is not found in the table.
   function Binary_Search
     (Table : T_Table; Value : Integer) return Integer
     with
       Global => null,
       Depends => (Binary_Search'Result => (Table, Value)),
       Pre => Table'Length > 0 and then
       Table'First <= Natural'Last - Table'Last,
       --and then
       --    (for all J in Table'Range => Table(J-1) <= Table(J)),
        Post => (Table(Binary_Search'Result) = Value or else
                  Binary_Search'result = Table'First);

   --  function Binary_Search_Recursive
   --    (Table: T_Table; Value: Integer) return Integer;


--



end Searching;




