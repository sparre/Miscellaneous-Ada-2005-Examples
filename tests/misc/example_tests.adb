with
  Self_Referencing_Object_Test;

package body Example_Tests is
   function Suite return Ahven.Framework.Test_Suite is
      use Ahven.Framework;
      Self_Reference_Test : Self_Referencing_Object_Test.Test;
   begin
      return Suite : Test_Suite :=
                       Create_Suite ("Miscellaneous_Ada_2005_Examples")
      do
         Add_Static_Test (Suite, Self_Reference_Test);
      end return;
   end Suite;
end Example_Tests;
