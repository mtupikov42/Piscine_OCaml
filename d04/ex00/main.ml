let main () =
	print_int List.length Color.all
	let lst = Color.all in
	let rec loop list =
		match list with
		| item :: tail ->
			print_endline (Color.toString item);
			print_endline (Color.toStringVerbose item);
			loop tail
		| [] -> ()
	in
	loop lst

let () = main ()
