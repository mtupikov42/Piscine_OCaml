let main () =
	let (a : Card.t) = (Card.best (Card.all)) in

	print_string "Best Card : ";
	print_endline (Card.toStringVerbose a);
	let (a : Card.t) = (Card.newCard Card.Value.T2 Card.Color.Spade) in
	let (b : Card.t) = (Card.newCard Card.Value.As Card.Color.Heart) in

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

	print_endline  "Compare "
	^ (Card.toStringVerbose b)
	^ " et "
	^ (Card.toStringVerbose a)
	^ " = "
	^ (string_of_int (Card.compare b a));

	let (a:Card.t) = (Card.newCard Card.Value.T2 Card.Color.Heart) in

	let rec loop list =
		match list with
		| [] -> ()
		| item :: tail ->
			print_string (Card.toStringVerbose item);
			print_string " : isSpade = ";
			print_string (string_of_bool (Card.isSpade item));
			print_string " : isHeart = ";
			print_string (string_of_bool (Card.isHeart item));
			print_string " : isDiamond = ";
			print_string (string_of_bool (Card.isDiamond item));
			print_string " : isClub = ";
			print_string (string_of_bool (Card.isClub item));
			print_string " Min avec "; print_string (Card.toStringVerbose a);
			print_string " = ";
			print_string (Card.toStringVerbose (Card.min a item));
			print_string " Max avec "; print_string (Card.toStringVerbose a);
			print_string " = ";
			print_endline (Card.toStringVerbose (Card.max a item));
			loop2 tail
	in
	loop Card.all

let () = main ()