with Background_Task;

procedure Demo is
   type Scalar is digits 10;

   procedure Check (Item : in     Scalar);
   procedure Check (Item : in     Scalar) is
   begin
      if not Scalar'Machine_Overflows and then not Item'Valid then
         raise Constraint_Error;
      end if;
   end Check;

   X : Scalar;
begin
   X := 0.0;     Check (X);
   X := 0.0 / X; Check (X);
end Demo;
