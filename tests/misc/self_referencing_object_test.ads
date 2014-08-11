with
  Ahven.Framework;

package Self_Referencing_Object_Test is
   type Test is new Ahven.Framework.Test_Case with null record;

   overriding
   procedure Initialize (T : in out Test);
end Self_Referencing_Object_Test;
