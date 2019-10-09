let main () =
	let man = new People.people "Martha" in
	let doctor = new Doctor.doctor "Who" 9000 man in
	print_endline doctor#to_string;
	doctor#talk;
	doctor#travel_in_time 2019 1941;
	doctor#travel_in_time 2019 2033;
	doctor#use_sonic_screwdriver

let () = main ()
