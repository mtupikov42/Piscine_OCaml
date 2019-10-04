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

let rec nextHelper t list =
	match list with
	| t1 :: t2 :: tail ->
		if t = t1 then
			t2
		else
			nextHelper (t2 :: tail)
	| item ->
		invalid_arg "No next value"
in

let next t =
	nextHelper t all

let previous t =
	nextHelper t (List.rev all)
