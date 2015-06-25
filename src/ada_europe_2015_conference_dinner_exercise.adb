with Ada.Integer_Text_IO, Ada.Text_IO;

procedure Ada_Europe_2015_Conference_Dinner_Exercise is
   function fac     (n : Positive) return Positive;
   function W       (n : Positive) return Natural;
   function W_prime (n : Positive) return Natural;

   function fac     (n : Positive) return Positive is
   begin
      if n = 1 then
         return 1;
      else
         return n * fac (n - 1);
      end if;
   end fac;

   function W       (n : Positive) return Natural is
   begin
      if n = 1 then
         return 1;
      else
         return fac (n - 1) + (n - 1) * W_prime (n - 1);
      end if;
   end W;

   function W_prime (n : Positive) return Natural is
   begin
      if n = 1 then
         return 0;
      else
         return W (n - 1) + (n - 1) * W_prime (n - 1);
      end if;
   end W_prime;

   use Ada.Integer_Text_IO, Ada.Text_IO;
begin
   for n in 1 .. 10 loop
      Put (n);
      Put (fac (n));
      Put (W (n));
      Put (W_prime (n));
      Put (" : ");
      Put (fac (n) - W (n));
      New_Line;
   end loop;
end Ada_Europe_2015_Conference_Dinner_Exercise;
