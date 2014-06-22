with Ada.Finalization;

package Finalising_Object is
   type States is (Undefined, Initialized, Finalized);

   State : States := Undefined;
private
   type Instance is new Ada.Finalization.Controlled with null record;

   overriding
   procedure Initialize (Object : in out Instance);
   overriding
   procedure Finalize (Object : in out Instance);
end Finalising_Object;
