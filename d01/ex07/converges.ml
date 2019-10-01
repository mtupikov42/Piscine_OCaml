let rec converges func arg it =
	if it < 0 then
		false
	else if it = 0 then
		func arg = arg
	else
		converges func (func arg) (it - 1)

let div_two num =
	num / 2

let double num =
	num * 2

let main () =
	Printf.printf "converges div_two 2 5 = %B\n" (converges div_two 2 5);
	Printf.printf "converges double 2 3 = %B\n" (converges double 2 3);
	Printf.printf "converges div_two 2 3 = %B\n" (converges div_two 2 3);
	Printf.printf "converges double 2 (-1) = %B\n" (converges double 2 (-1));
	Printf.printf "converges div_two 10 1 = %B\n" (converges div_two 10 10);
	Printf.printf "converges double (-10) 100 = %B\n" (converges double (-10) 100)

let () = main ()
