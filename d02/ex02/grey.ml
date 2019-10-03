let grey it =
	let rec printList list =
		match list with
		| item :: tail ->
			Printf.printf "%s " item;
			printList tail
		| [] ->
			print_char '\n'
	in

	if it == 0 then
		print_endline ""
	else
		let rec prepend0 str =
			"0" ^ str
		in

		let rec prepend1 str =
			"1" ^ str
		in

		let rec rapeMe list it =
			if it = 0 then
				printList list
			else
				let revList = List.rev list in
				let l1 = List.map prepend0 list in
				let l2 = List.map prepend1 revList in
				let concList = List.append l1 l2 in

				rapeMe concList (it - 1)
		in
		rapeMe ["0"; "1"] (it - 1)

let main () =
	grey 0;
	grey 1;
	grey 2;
	grey 3;
	grey 5

let () = main ()
