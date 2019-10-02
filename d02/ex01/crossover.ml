let crossover lhs rhs =
	if List.length lhs = 0 || List.length rhs = 0 then
		[]
	else
		let rec crossoverImpl lhs rhs =
			match lhs with
			| [] -> []
			| item :: tail ->
				if List.mem item rhs then
					item :: (crossoverImpl tail rhs)
				else
					crossoverImpl tail rhs
		in
		crossoverImpl lhs rhs

let main () =
	let rec printIntList list =
		match list with
		| item :: tail ->
			Printf.printf "%d " item;
			printIntList tail
		| [] ->
			print_char '\n'
	in

	let rec printCharList list =
		match list with
		| item :: tail ->
			Printf.printf "%c " item;
			printCharList tail
		| [] ->
			print_char '\n'
	in

	printIntList (crossover [1; 2; 3] [2; 3]);
	printIntList (crossover [] [2; 3]);
	printIntList (crossover [1; 2; 3] []);
	printIntList (crossover [1; 2; 3] [4; 5; 6]);

	printCharList (crossover ['a'] ['b']);
	printCharList (crossover ['a'] ['a']);
	printCharList (crossover ['a'; 'a'; 'b'; 'b'] ['a'; 'a'; 'b']);
	printCharList (crossover ['z'] ['a'; 'b'; 'c'; 'z'])

let () = main ()
