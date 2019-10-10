let main () =
	let carbon = new Carbon.carbon in
	let gold = new Gold.gold in
	let hydrogen = new Hydrogen.hydrogen in
	let iron = new Iron.iron in
	let oxygen = new Oxygen.oxygen in
	let thulium = new Thulium.thulium in
	let titanium = new Titanium.titanium in

	print_endline carbon#to_string;
	print_endline gold#to_string;
	print_endline hydrogen#to_string;
	print_endline iron#to_string;
	print_endline oxygen#to_string;
	print_endline thulium#to_string; 
	print_endline titanium#to_string

let () = main ()
