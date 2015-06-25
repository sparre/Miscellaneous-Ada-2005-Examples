with Ada.Text_IO;

with State;

procedure Persistence_With_Shared_Passive is
begin
   delay 0.001;

   Ada.Text_IO.Put_Line (Integer'Image (State.Object));
   Ada.Text_IO.Put_Line (State.Message);
   Ada.Text_IO.Put_Line ("" & State.C);

   State.Object           := State.Object + 1;
   State.Message (1 .. 6) := "Hello!";
   State.C := Character'Succ (State.C);

   delay 10.0;
end Persistence_With_Shared_Passive;
