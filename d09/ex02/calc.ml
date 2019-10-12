module type MONOID =
sig
	type element
	val zero1 : element
	val zero2 : element
	val mul : element -> element -> element
	val add : element -> element -> element
	val div : element -> element -> element
	val sub : element -> element -> element
end

module INT =
struct
	type element = int
	let zero1 = 0
	let zero2 = 1
	let mul = ( * )
	let add = ( + )
	let div = ( / )
	let sub = ( - )
end

module FLOAT =
struct
	type element = float
	let zero1 = 0.0
	let zero2 = 1.0
	let mul = ( *. )
	let add = ( +. )
	let div = ( /. )
	let sub = ( -. )
end

module Calc =
functor (M : MONOID) -> struct
	let add i1 i2 = M.add i1 i2

	let sub i1 i2 = M.sub i1 i2

	let mul i1 i2 = M.mul i1 i2

	let div i1 i2 = M.div i1 i2

	let rec power i pow =
		match pow with
		| 0 -> M.zero1
		| 1 -> i
		| n when (n mod 2 = 0) ->
			let a = power i (n / 2) in
			M.mul a a
		| n ->
			let a = power i (n / 2) in
			M.mul i (M.mul a a)

	let rec fact num =
		match num with
		| (num : M.element) when (num <= M.zero2) ->
			M.zero2
		| _ ->
			M.mul num (fact (M.sub (num : M.element) M.zero2))

end

module Calc_int = Calc(INT)
module Calc_float = Calc(FLOAT)

let () =
	print_endline (string_of_int (Calc_int.power 3 3));
	print_endline (string_of_float (Calc_float.power 3.0 3));
	print_endline (string_of_int (Calc_int.fact 5));
	print_endline (string_of_float (Calc_float.fact 5.0));
	print_endline (string_of_int (Calc_int.mul (Calc_int.add 20 1) 2));
	print_endline (string_of_float (Calc_float.mul (Calc_float.add 20.0 1.0) 5.0));
	print_endline (string_of_int (Calc_int.div (Calc_int.sub 100 50) 5));
	print_endline (string_of_float (Calc_float.div (Calc_float.sub 100.0 50.0) 5.0))
