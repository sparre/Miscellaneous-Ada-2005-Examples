with
  Ahven.Framework,
  Ahven.Text_Runner;

procedure Example_Tests.Run is
   Suite : Ahven.Framework.Test_Suite := Example_Tests.Suite;
begin
   Ahven.Text_Runner.Run (Suite);
end Example_Tests.Run;
