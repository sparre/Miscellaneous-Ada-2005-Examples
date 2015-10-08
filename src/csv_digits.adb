with Ada.Text_IO;

procedure CSV_Digits is
   type Data is range 1 .. 3;
   package Data_Text_IO is new Ada.Text_IO.Integer_IO (Data);

   subtype Separators is Character range ';' .. ';';

   procedure Not_EOL;
   procedure EOL;

   procedure EOL is
   begin
      if not Ada.Text_IO.End_Of_Line then
         raise Ada.Text_IO.Data_Error;
      end if;
   end EOL;

   procedure Not_EOL is
   begin
      if Ada.Text_IO.End_Of_Line then
         raise Ada.Text_IO.Data_Error;
      end if;
   end Not_EOL;

   Digit     : Data;
   Separator : Separators;
begin
   loop
      Data_Text_IO.Get (Digit);    Not_EOL;
      Ada.Text_IO.Get (Separator); Not_EOL;
      Data_Text_IO.Get (Digit);    Not_EOL;
      Ada.Text_IO.Get (Separator); Not_EOL;
      Data_Text_IO.Get (Digit);        EOL;
      Ada.Text_IO.Skip_Line;
   end loop;
exception
   when Ada.Text_IO.Data_Error =>
      Ada.Text_IO.Put_Line ("BAD");
end CSV_Digits;
