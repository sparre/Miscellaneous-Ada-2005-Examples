with Ada.Text_IO;
with Finalising_Object;

package body Background_Task is
   task body Worker is
   begin
      loop
         delay 0.1;

         Ada.Text_IO.Put_Line (Finalising_Object.State'Img);
      end loop;
   end Worker;
end Background_Task;
