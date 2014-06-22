package body Finalising_Object is
   overriding
   procedure Finalize (Object : in out Instance) is
      pragma Unreferenced (Object);
   begin
      State := Finalized;
   end Finalize;

   overriding
   procedure Initialize (Object : in out Instance) is
      pragma Unreferenced (Object);
   begin
      State := Initialized;
   end Initialize;

   Flag : Instance;
   pragma Unreferenced (Flag);
end Finalising_Object;
