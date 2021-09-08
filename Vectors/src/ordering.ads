package Ordering with SPARK_Mode is

   type T_Table is array (Natural range <>) of Integer;
     
   
      --  Swap the contents of the two parameters
   procedure Swap
     (A : in out Integer;
      B : in out Integer)
     with
       Global => null,
       Depends => (A => B, B => A),
       Pre => true ,
       Post => A = B'Old and then B = A'Old;
   

   
      --  Swap the contents of Table located at index Pos_1 and Pos_2
   procedure Swap
     (Table : in out T_Table;
      Pos_1 : in     Natural;
      Pos_2 : in     Natural)
     with
       Global => null,
       Depends => (Table => (Pos_1, Pos_2, Table)),
       Pre => Table'Length >= 2 and then 
       Pos_1 in Table'Range and then
       Pos_2 in Table'Range and then
       Pos_1 /= Pos_2,
       Post => Table(Pos_2) = Table'Old(Pos_1) and then
           Table(Pos_1) = Table'Old(Pos_2);
  
      --  Sort the table using the bubble algorithm
   procedure Bubble_Sort (Table : in out T_Table)
     with
       Global => null,
       Depends => (Table => Table),
       Pre => true,
       Post => (for all J in Table =>  ;

   --  
   --  procedure Selection_Sort (Table : in out T_Table);
   --  --  Sort the table using the Selection algorithm
   --  
   --  procedure Insertion_Sort (Table : in out T_Table);
   --  --  Sort the table using the Insertion algorithm
   --  
   --  procedure Shell_Sort (Table : in out T_Table);
   --  --  Sort the table using the Shell Sort algorithm
   --  
   --  procedure Merge_Sort (Table : in out T_Table);
   --  --  Sort the table using the Merge Sort algorithm
   --  
   --  procedure Quick_Sort (Table : in out T_Table);
   --  --  Sort the table using the QuickSort algorithm
   --  
end Ordering;

     --  with
     --    Global =>,
     --    Depends =>,
     --    Pre =>,
     --    Post =>;
