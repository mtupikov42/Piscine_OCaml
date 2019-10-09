let main () =
	let man = new People.people "George" in
	print_endline man#to_string;
	man#talk;
	man#die

let () = main ()
