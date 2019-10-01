let rec ackermann m n =
	if m = 0 then
		n + 1
	else if m > 0 && n = 0 then
		ackermann (m - 1) 1
	else if m > 0 && n > 0 then
		ackermann (m - 1) (ackermann m (n - 1))
	else
		-1

let main () =
	print_endline (string_of_int (ackermann (-1) 7));
	print_endline (string_of_int (ackermann 0 0));
	print_endline (string_of_int (ackermann 2 3));
	print_endline (string_of_int (ackermann 1 5));
	print_endline (string_of_int (ackermann 4 1))

let () = main ()
