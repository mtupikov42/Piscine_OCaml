let fibonacci n =
	let rec fhelper i f1 f2 =
		if n < 0 then
			-1
		else if i = n then
			f1
		else
			fhelper (i + 1) f2 (f1 + f2)
	in
	fhelper 0 0 1

let main () =
	print_endline (string_of_int (fibonacci (-42)));
	print_endline (string_of_int (fibonacci 1));
	print_endline (string_of_int (fibonacci 3));
	print_endline (string_of_int (fibonacci 6));
	print_endline (string_of_int (fibonacci 8));
	print_endline (string_of_int (fibonacci 10));
	print_endline (string_of_int (fibonacci 1488228321))

let () = main ()
