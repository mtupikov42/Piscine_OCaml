let main () =
	let rec emptyDeck deck =
		let (card, deck) = Deck.drawCard deck in
		print_endline (Deck.Card.toString card);
		empty_deck deck
	in
	let deck = Deck.newDeck () in

	List.iter print_endline (Deck.toStringList deck);
	print_endline "";

	List.iter print_endline (Deck.toStringListVerbose deck);
	print_endline "";

	emptyDeck deck;