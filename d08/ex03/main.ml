let main () =
	let methane = new Methane.methane in
	let ethane = new Ethane.ethane in
	let octane = new Octane.octane in

	print_endline methane#formula;
	print_endline ethane#formula;
	print_endline octane#formula

let () = main ()
