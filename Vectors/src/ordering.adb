package body Ordering with SPARK_Mode is

   procedure Swap
     (A : in out Integer;
      B : in out Integer) is

      aux : constant Integer := A;

   begin

      A := B;
      B:= aux;
   end Swap;

   procedure Swap
     (Table : in out T_Table;
      Pos_1 : in Natural;
      Pos_2 : in Natural) is
        aux: Integer;
     begin
      aux := Table(Pos_1);
      Table(Pos_1) := Table(Pos_2);
      Table(Pos_2) := aux;
   end Swap;

   procedure Bubble_Sort (Table : in out T_Table) is

      sorted: Boolean := False;
      pivot: Integer := Table'First;
   begin

      if Table'Length < 2 then
         sorted := True;
      end if;

      while sorted = False loop
         sorted := True;
         for I in Table'First .. Table'Last-1 loop
            if Table(I) > Table(I+1) then
               pivot := Table(I);
               Table(I) := Table(I+1);
               Table(I+1) := pivot;
               sorted := False;
            end if;

            --  pragma Loop_Invariant();
            pragma Loop_Invariant(Table(I)<=Table(I+1));

            pragma Loop_Invariant(for some J in Table'Range => Table(J) = Table(pivot));
         end loop;
      end loop;
   end Bubble_Sort;
   --
   --  procedure Selection_Sort (Table : in out T_Table) is
   --     point: Natural:= Table'First;
   --     minValPos: Natural := Table'First;
   --     aux: Integer := 0;
   --  begin
   --
   --     while point < Table'Last loop
   --        --Searching for min Val
   --        for I in point+1 .. Table'Last loop
   --           if Table(I) < Table(minValPos) then
   --              minValPos := I;
   --           end if;
   --        end loop;
   --        if minValPos > point then
   --           aux := Table(point);
   --           Table(point) := Table(minValPos);
   --           Table(minValPos) := aux;
   --        end if;
   --        point := point +1;
   --        minValPos := point;
   --     end loop;
   --  end Selection_Sort;
   --
   --  procedure Insertion_Sort (Table : in out T_Table) is
   --     J : Natural := 0;
   --     auxValue: Integer := 0;
   --  begin
   --     if Table'Length > 1 then
   --        for I in Table'First+1 .. Table'Last loop
   --           if Table(I) < Table(I-1) then
   --              auxValue := Table(I);
   --              J:= I-1;
   --              while J >= Table'First and auxValue < Table(J) loop
   --                 Table(J+1) := Table(J);
   --                 J := J-1;
   --              end loop;
   --              Table(J) := auxValue;
   --           end if;
   --        end loop;
   --     end if;
   --  end Insertion_Sort;
   --
   --  procedure Shell_Sort (Table : in out T_Table) is
   --  begin
   --     null;
   --  end Shell_Sort;
   --
   --  procedure Merge_Sort (Table : in out T_Table) is
   --  begin
   --     null;
   --  end Merge_Sort;
   --
   --  procedure Quick_Sort (Table : in out T_Table) is
   --  begin
   --     null;
   --  end Quick_Sort;

end Ordering;
