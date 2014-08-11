package Self_Referencing_Objects is
   type Instance is limited private;
   procedure Increment (Counter : in     Instance);
private
   type Holder (Reference : access Instance) is limited null record;
   type Instance is limited
      record
         Self    : Holder (Instance'Access);
         Counter : Natural := 0;
      end record;
end Self_Referencing_Objects;
