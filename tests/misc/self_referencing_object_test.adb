with
  Self_Referencing_Objects,
  Self_Referencing_Objects.Inspect;

package body Self_Referencing_Object_Test is
   procedure Counter_Increment;

   procedure Counter_Increment is
      use Self_Referencing_Objects;
      Object        : Self_Referencing_Objects.Instance;
      Before, After : Natural;
   begin
      Before := Inspect (Object);
      Increment (Object);
      After  := Inspect (Object);

      Ahven.Assert
        (Condition => After = (Before + 1),
         Message   => "Object counter did not increment properly");
   end Counter_Increment;

   overriding
   procedure Initialize (T : in out Test) is
      use Ahven.Framework;
   begin
      T.Set_Name ("Self-referencing objects");

      Add_Test_Routine (T, Counter_Increment'Access, "Counter increment");
   end Initialize;
end Self_Referencing_Object_Test;
