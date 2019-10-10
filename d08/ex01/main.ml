let main () =
	let water = new Water.water in

	let methane = new Methane.methane in
	let carbon_dioxyde = new Carbon_dioxyde.carbon_dioxyde in
	let iron_oxide = new Iron_oxide.iron_oxide in
	let hexapentaenylidene = new Hexapentaenylidene.hexapentaenylidene in

	print_string water#to_string;
	print_endline water#formula;

	print_string carbon_dioxyde#to_string;
	print_endline carbon_dioxyde#formula;

	print_string methane#to_string;
	print_endline methane#formula;

	print_string iron_oxide#to_string;
	print_endline iron_oxide#formula;

	print_string hexapentaenylidene#to_string;
	print_endline hexapentaenylidene#formula

let () = main ()
