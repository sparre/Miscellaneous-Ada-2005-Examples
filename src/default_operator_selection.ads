with
  Ada.Containers.Vectors;

package Default_Operator_Selection is
   type Day_Of_Week is (Work_Day, Holiday);

   package Hours_Worked_Vector is
     new Ada.Containers.Vectors (Index_Type   => Natural,
                                 Element_Type => Day_Of_Week);
end Default_Operator_Selection;
