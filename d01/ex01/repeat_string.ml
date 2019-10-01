let repeat_string ?(str = "x") num =
	if num < 0 then
		"Error"
	else
		let finStr = "" in
		let rec repeat_and_concat num str conStr =
			if num > 0 then
				repeat_and_concat (num - 1) (str ^ conStr) conStr
			else
				str
		in
		repeat_and_concat num finStr str

let main () =
	(* test as repeat_x *)
	print_endline (repeat_string 0);
	print_endline (repeat_string (-1));
	print_endline (repeat_string 1);
	print_endline (repeat_string 9);

	(* test as repeat_string *)

	print_endline (repeat_string ~str:"OH NO!" 0);
	print_endline (repeat_string ~str:"LEL" (-1));
	print_endline (repeat_string ~str:"It was me, Dio!" 1);
	print_endline (repeat_string ~str:"Muda!" 9)

let () = main ()
