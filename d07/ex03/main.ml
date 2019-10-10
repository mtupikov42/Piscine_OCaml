let main () =
	let doctor_army = new Army.army in

	doctor_army#add (new Doctor.doctor "Who" 99 (new People.people "Stranger"));

	doctor_army#print;

	doctor_army#delete;

	doctor_army#print;

	let dalek_army = new Army.army in

	for i = 0 to 10 do
		dalek_army#add (new Dalek.dalek)
	done;

	dalek_army#print

let () = main ()
