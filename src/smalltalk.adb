with Ada.Integer_Text_IO,
     Ada.Text_IO;

package body Smalltalk is
   function Set (New_Item : in Integer) return Instance is
   begin
      return Result : Instance do
         Result.Filled_To  := 1;
         Result.Values (1) := New_Item;
      end return;
   end Set;

   function Set (Target   : in Instance;
                 New_Item : in Integer) return Instance is
   begin
      return Result : Instance := Target do
         Result.Filled_To                 := Result.Filled_To + 1;
         Result.Values (Result.Filled_To) := New_Item;
      end return;
   end Set;

   procedure Show (Object : in     Instance) is
      use Ada.Integer_Text_IO, Ada.Text_IO;
   begin
      Put ("{");
      for Index in Object.Values'First .. Object.Filled_To loop
         Put (Object.Values (Index), Width => 0);
         if Index /= Object.Filled_To then
            Put (", ");
         end if;
      end loop;
      Put_Line ("}");
   end Show;
end Smalltalk;
