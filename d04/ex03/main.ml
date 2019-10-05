let main () =
	Random.self_init();
	let rec emptyDeck deck =
		let (card, deck) = Deck.drawCard deck in
		print_endline (Deck.Card.toString card);
		emptyDeck deck
	in
	let deck = Deck.newDeck () in

	List.iter print_endline (Deck.toStringList deck);
	print_endline "";

	List.iter print_endline (Deck.toStringListVerbose deck);
	print_endline "";
	try
		emptyDeck deck
	with
		Failure str -> print_endline str

let () = main ()
