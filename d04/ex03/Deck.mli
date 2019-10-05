module Card:
sig
	module Color:
	sig
		type t = Spade | Heart | Diamond | Club
		val all : t list
		val toString : t -> string
		val toStringVerbose : t -> string
	end

	module Value:
	sig
		type t = T2 | T3 | T4 | T5 | T6 | T7 | T8 | T9 | T10 | Jack |
					Queen | King | As
		val all : t list
		val toInt : t -> int
		val toString : t -> string
		val toStringVerbose : t -> string
		val next : t -> t
		val previous : t -> t
	end

	type t

	val newCard : Color.t -> Value.t -> t

	val allSpades : t list
	val allClubs : t list
	val allDiamonds : t list
	val allHearts : t list
	val all : t list

	val getColor : t -> Color.t
	val getValue : t -> Value.t

	val toString : t -> string
	val toStringVerbose : t -> string

	val compare : t -> t -> int
	val max : t -> t -> t
	val min : t -> t -> t
	val best : t list -> t

	val isOf : t -> Color.t -> bool
	val isSpade : t -> bool
	val isHeart : t -> bool
	val isClub : t -> bool
	val isDiamond : t -> bool
end

type t

val newDeck : unit -> t

val toStringList : t -> string list
val toStringListVerbose : t -> string list

val drawCard : t -> Card.t * t
