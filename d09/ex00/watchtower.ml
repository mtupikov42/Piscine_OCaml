module Watchtower =
sig
	type hour = int
	val zero : hour
	val add : hour -> hour -> hour
	val sub : hour -> hour -> hour
end

module Watchtower =
struct
	type hour = int
	let zero = ( 12 : hour )
	let add ( h1 : hour ) ( h2 : hour ) =

	let sub ( h1 : hour ) ( h2 : hour ) =
end