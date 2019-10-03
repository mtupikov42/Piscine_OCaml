let sequence count =
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
	in

	let rec tuplesListToSimple list =
		match list with
		| (i1, i2) :: tail ->
			i1 :: i2 :: (tuplesListToSimple tail)
		| [] ->
			[]
	in

	let rec printList list =
		match list with
		| item :: tail ->
			Printf.printf "%d" item;
			printList tail
		| [] ->
			print_char '\n'
	in

	let rec meow list count =
		if count = 0 then
			printList list
		else
			let tuplLst = encode list in
			let simplList = tuplesListToSimple tuplLst in
			meow simplList (count - 1)
	in
	if count <= 0 then
		print_char '\n'
	else
		meow [1] count

let main () =
	sequence 1;
	sequence 2;
	sequence 3;
	sequence 4;
	sequence 5;
	sequence 6;
	sequence 0

let () = main ()
