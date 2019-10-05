let main () =
	let a = Card.best Card.all in

	print_endline ("Best Card : " ^ Card.toStringVerbose a);

	let a = Card.newCard Card.Color.Spade Card.Value.T2 in
	let b = Card.newCard Card.Color.Heart Card.Value.As in

	print_endline ("Compare "
	^ (Card.toStringVerbose a)
	^ " and "
	^ (Card.toStringVerbose b)
	^ " = "
	^ (string_of_int (Card.compare a b)));

	print_endline ("Compare "
	^ (Card.toStringVerbose b)
	^ " and "
	^ (Card.toStringVerbose b)
	^ " = "
	^ (string_of_int (Card.compare b b)));

	print_endline  ("Compare "
	^ (Card.toStringVerbose b)
	^ " and "
	^ (Card.toStringVerbose a)
	^ " = "
	^ (string_of_int (Card.compare b a)));

	let a = Card.newCard Card.Color.Heart Card.Value.T2 in

	let rec loop list =
		match list with
		| [] -> ()
		| item :: tail ->
			print_endline ((Card.toStringVerbose item)
			^ " : isSpade = "
			^ (string_of_bool (Card.isSpade item)));
			print_endline (" : isHeart = "
			^ (string_of_bool (Card.isHeart item)));
			print_endline (" : isDiamond = "
			^ (string_of_bool (Card.isDiamond item)));
			print_endline (" : isClub = "
			^ (string_of_bool (Card.isClub item)));
			print_endline (" Min "
			^ (Card.toStringVerbose a)
			^ " and "
			^ (Card.toStringVerbose item)
			^ " = "
			^ (Card.toStringVerbose (Card.min a item)));
			print_endline (" Max "
			^ (Card.toStringVerbose a)
			^ " and "
			^ (Card.toStringVerbose item)
			^ " = "
			^ (Card.toStringVerbose (Card.max a item)));
			loop tail
	in
	loop Card.all

let () = main ()