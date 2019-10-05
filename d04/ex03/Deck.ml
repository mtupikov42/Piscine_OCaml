module Card = struct
	module Color = struct
		type t = Spade | Heart | Diamond | Club

		let all = [Spade; Heart; Diamond; Club]

		let toString t =
			match t with
			| Spade -> "S"
			| Heart -> "H"
			| Diamond -> "D"
			| Club -> "C"

		let toStringVerbose t =
			match t with
			| Spade -> "Spade"
			| Heart -> "Heart"
			| Diamond -> "Diamond"
			| Club -> "Club"

	end

	module Value = struct
		type t = T2 | T3 | T4 | T5 | T6 | T7 | T8 | T9 | T10 | Jack | Queen | King | As

		let all = [T2; T3; T4; T5; T6; T7; T8; T9; T10; Jack; Queen; King; As]

		let toInt t =
			match t with
			| T2 -> 1
			| T3 -> 2
			| T4 -> 3
			| T5 -> 4
			| T6 -> 5
			| T7 -> 6
			| T8 -> 7
			| T9 -> 8
			| T10 -> 9
			| Jack -> 10
			| Queen -> 11
			| King -> 12
			| As -> 13

		let toString t =
			match t with
			| T2 -> "2"
			| T3 -> "3"
			| T4 -> "4"
			| T5 -> "5"
			| T6 -> "6"
			| T7 -> "7"
			| T8 -> "8"
			| T9 -> "9"
			| T10 -> "10"
			| Jack -> "J"
			| Queen -> "Q"
			| King -> "K"
			| As -> "A"


		let toStringVerbose t =
			match t with
			| T2 -> "T2"
			| T3 -> "T3"
			| T4 -> "T4"
			| T5 -> "T5"
			| T6 -> "T6"
			| T7 -> "T7"
			| T8 -> "T8"
			| T9 -> "T9"
			| T10 -> "T10"
			| Jack -> "Jack"
			| Queen -> "Queen"
			| King -> "King"
			| As -> "As"

		let next t =
			let rec nextHelper list =
				match list with
				| t1 :: t2 :: tail ->
					if t = t1 then
						t2
					else
						nextHelper (t2 :: tail)
				| item ->
					invalid_arg "No next value"
			in
			nextHelper all

		let previous t =
			let rec prevHelper list =
				match list with
				| t1 :: t2 :: tail ->
					if t = t2 then
						t1
					else
						prevHelper (t2 :: tail)
				| item ->
					invalid_arg "No prev value"
			in
			prevHelper all
	end

	type t = {
		color : Color.t;
		value : Value.t
	}

	let newCard c v = { color = c; value = v }

	let allSpades =
		let allValues = Value.all in
		let rec generate list =
			match list with
			| (item : Value.t) :: tail ->
				({color = Color.Spade; value = item}) :: (generate tail)
			| [] -> []
		in
		generate allValues

	let allHearts =
		let allValues = Value.all in
		let rec generate list =
			match list with
			| (item : Value.t) :: tail ->
				({color = Color.Heart; value = item}) :: (generate tail)
			| [] -> []
		in
		generate allValues

	let allDiamonds =
		let allValues = Value.all in
		let rec generate list =
			match list with
			| (item : Value.t) :: tail ->
				({color = Color.Diamond; value = item}) :: (generate tail)
			| [] -> []
		in
		generate allValues

	let allClubs =
		let allValues = Value.all in
		let rec generate list =
			match list with
			| (item : Value.t) :: tail ->
				({color = Color.Club; value = item}) :: (generate tail)
			| [] -> []
		in
		generate allValues

	let all = allSpades @ allHearts @ allDiamonds @ allClubs

	let getValue item =
		item.value

	let getColor item =
		item.color

	let toString item =
		(Value.toString (getValue item)) ^ (Color.toString (getColor item))

	let toStringVerbose item =
		"Card("
		^ (Value.toString (getValue item))
		^ ", "
		^ (Color.toString (getColor item))
		^ ")"

	let compare c1 c2 =
		(Value.toInt c1.value) - (Value.toInt c2.value)

	let max c1 c2 =
		if compare c1 c2 >= 0 then
			c1
		else
			c2

	let min c1 c2 =
		if compare c1 c2 <= 0 then
			c1
		else
			c2

	let best list =
		match list with
		| item :: tail ->
			List.fold_left max item tail
		| [] ->
			invalid_arg "List is empty"

	let isOf item color =
		item.color = color

	let isSpade item =
		item.color = Color.Spade

	let isHeart item =
		item.color = Color.Heart

	let isDiamond item =
		item.color = Color.Diamond

	let isClub item =
		item.color = Color.Club
end

type t = Card.t list

let newDeck () =
	let rec rndDeck deck =
		let listLength = List.length deck in
		if listLength = 0 then
			[]
		else
			let rndNum = Random.int listLength in
			let card = List.nth deck rndNum in

			let removeIfElem currentCard =
				currentCard != card
			in
			let updatedDeck = List.filter removeIfElem deck in
			card :: rndDeck updatedDeck
	in
	rndDeck Card.all

let toStringList t =
	List.map Card.toString t

let toStringListVerbose t =
	List.map Card.toStringVerbose t

let drawCard t =
	match t with
	| item :: tail ->
		(item, tail)
	| [] ->
		raise (Failure "Empty deck")
