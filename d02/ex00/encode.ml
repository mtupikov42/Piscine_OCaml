let encode list =
	let rec getTuplesList inputList it resultList =
		match inputList with
		| lhs :: rhs :: tail ->
			if lhs = rhs then
				getTuplesList (rhs :: tail) (it + 1) resultList
			else
				getTuplesList (rhs :: tail) 0 (resultList @ [(it + 1), lhs])
		| item :: tail ->
			resultList @ [(it + 1), item]
		| [] ->
			resultList
	in
	getTuplesList list 0 []

let main () =
	let rec printTuples list =
		match list with
		| (count, ch) :: tail ->
			Printf.printf "[%d; %c] " count ch;
			printTuples tail
		| [] ->
			print_char '\n'
	in

	printTuples (encode ['a'; 'a'; 'a'; 'b'; 'b'; 'b']);
	printTuples (encode ['a'; 'b'; 'b'; 'a']);
	printTuples (encode []);
	printTuples (encode ['a'; 'b'; 'c'; 'd'; 'e'; 'f'; 'a'; 'a'; 'b'; 'f'; 'c'; 'a'])

let () = main ()
