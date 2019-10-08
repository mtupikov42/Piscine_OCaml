module type PAIR = sig val pair : (int * int) end
module type VAL = sig val x : int end

module type MakeN =
	functor (Pair : PAIR) -> VAL

module MakeFst : MakeN =
	functor (Pair : PAIR) ->
		struct
			let x = match Pair.pair with
			| (v1, v2) -> v1
		end

module MakeSnd : MakeN =
	functor (Pair : PAIR) ->
		struct
			let x = match Pair.pair with
			| (v1, v2) -> v2
		end

module Pair : PAIR = struct let pair = ( 21, 42 ) end
module Fst : VAL = MakeFst (Pair)
module Snd : VAL = MakeSnd (Pair)
let () = Printf.printf "Fst.x = %d, Snd.x = %d\n" Fst.x Snd.x