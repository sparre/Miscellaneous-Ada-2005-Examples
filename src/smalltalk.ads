package Smalltalk is
   type Instance is tagged private;

   function Set (New_Item : in Integer) return Instance;
   function Set (Target   : in Instance;
                 New_Item : in Integer) return Instance;
   procedure Show (Object : in     Instance);
private
   type Counts is range 0 .. 10;
   subtype Indices is Counts range 1 .. Counts'Last;
   type Integer_Array is array (Indices) of Integer;

   type Instance is tagged
      record
         Values    : Integer_Array;
         Filled_To : Counts;
      end record;
end Smalltalk;
