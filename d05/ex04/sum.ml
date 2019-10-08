let sum f1 f2 =
	f1 +. f2

let main () =
	print_endline (string_of_float (sum 2.0 2.0));
	print_endline (string_of_float (sum 0.0 0.0));
	print_endline (string_of_float (sum 100500.100500 9000.9000));
	print_endline (string_of_float (sum (-42.123456789) 42.123456789));
	print_endline (string_of_float (sum max_float 0.0));
	print_endline (string_of_float (sum 0.0 min_float));
	print_endline (string_of_float (sum max_float min_float));
	print_endline (string_of_float (sum epsilon_float 42.0))

let () = main ()
