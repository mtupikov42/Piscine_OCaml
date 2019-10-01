let repeat_x num =
	if num < 0 then
		"Error"
	else
		let str = "" in
		let rec repeat_and_concat num str =
			if num > 0 then
				repeat_and_concat (num - 1) (str ^ "x")
			else
				str
		in
		repeat_and_concat num str

let main () =
	print_endline (repeat_x 0);
	print_endline (repeat_x (-1));
	print_endline (repeat_x 1);
	print_endline (repeat_x 9)

let () = main ()
