let main () =
	let h1 : Watchtower.Watchtower.hour = 2 in
	let h2 : Watchtower.Watchtower.hour = 10 in

	print_endline (string_of_int (Watchtower.Watchtower.add h1 h2));

	let h1 : Watchtower.Watchtower.hour = Watchtower.Watchtower.zero in
	let h2 : Watchtower.Watchtower.hour = 12 in

	print_endline (string_of_int (Watchtower.Watchtower.add h1 h2));

	let h1 : Watchtower.Watchtower.hour = 2 in
	let h2 : Watchtower.Watchtower.hour = 10 in

	print_endline (string_of_int (Watchtower.Watchtower.sub h1 h2));

	let h1 : Watchtower.Watchtower.hour = Watchtower.Watchtower.zero in
	let h2 : Watchtower.Watchtower.hour = 12 in

	print_endline (string_of_int (Watchtower.Watchtower.sub h1 h2));

	let h1 : Watchtower.Watchtower.hour = 3 in
	let h2 : Watchtower.Watchtower.hour = 4 in

	print_endline (string_of_int (Watchtower.Watchtower.add h1 h2));

	let h1 : Watchtower.Watchtower.hour = 3 in
	let h2 : Watchtower.Watchtower.hour = 4 in

	print_endline (string_of_int (Watchtower.Watchtower.sub h1 h2))

let () = main ()
