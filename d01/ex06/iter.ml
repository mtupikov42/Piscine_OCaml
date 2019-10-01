let iter func arg it =
	let rec rec_call func arg it =
		if it = 0 then
			arg
		else
			rec_call func (func arg) (it - 1)
	in

	if it < 0 then
		-1
	else
		rec_call func arg it

let root num =
	num * num

let double num =
	num * 2

let main () =
	print_endline ("iter root 2 4 = " ^ string_of_int (iter root 2 4));
	print_endline ("iter double 2 4 = " ^ string_of_int (iter double 2 4));
	print_endline ("iter root 2 (-1) = " ^ string_of_int (iter root 2 (-1)));
	print_endline ("iter double (-1) 10 = " ^ string_of_int (iter double (-1) 10))

let () = main ()
