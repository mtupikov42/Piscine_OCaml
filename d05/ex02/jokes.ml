let main () =
	Random.self_init();
	let jokes_array = Array.make 5 "" in
	Array.set jokes_array 0 "-Do you like roses?\n-No.\n-Good. VEDb STRANE NYZHNY PAROVOZY, STRANE NYZHEN METAL!\n";
	Array.set jokes_array 1 "OOP is better than FP\n";
	Array.set jokes_array 2 "Where did the computer go dancing? The disc-o!\n";
	Array.set jokes_array 3 "There are only 10 kinds of people in this world: those who know binary and those who don’t.\n";
	Array.set jokes_array 4 "Programming is like sex: one mistake and you have to support it for the rest of your life.\n";

	print_string (Array.get jokes_array (Random.int (Array.length jokes_array)))

let () = main ()
