let main () =
	Random.self_init ();
	let man = new People.people "Martha" in
	let doctor = new Doctor.doctor "Who" 9000 man in
	print_endline doctor#to_string;
	doctor#talk;
	
	let dalek1 = new Dalek.dalek in
	let dalek2 = new Dalek.dalek in

	print_endline dalek1#to_string;
	print_endline dalek2#to_string;

	dalek1#talk;
	dalek2#talk;

	dalek2#exterminate man;

	doctor#use_sonic_screwdriver;

	dalek1#die

let () = main ()
