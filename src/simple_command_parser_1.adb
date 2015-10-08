with Ada.Text_IO;

procedure Simple_Command_Parser_1 is
   type Commands is (CMD);
   type Values is range 4 .. 10;

   package Command_Text_IO is new Ada.Text_IO.Enumeration_IO (Commands);
   package Value_Text_IO   is new Ada.Text_IO.Integer_IO     (Values);

   Command : Commands;
   Value   : Values;
begin
   loop
      Command_Text_IO.Get (Command);
      Value_Text_IO.Get   (Value);
      Ada.Text_IO.Skip_Line;
   end loop;
end Simple_Command_Parser_1;
