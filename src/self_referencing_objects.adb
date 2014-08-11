package body Self_Referencing_Objects is
   procedure Increment (Counter : in     Instance) is
      --  Notice that Counter is 'in', but still can be modified.
   begin
      Counter.Self.Reference.Counter := Counter.Counter + 1;
   end Increment;
end Self_Referencing_Objects;
