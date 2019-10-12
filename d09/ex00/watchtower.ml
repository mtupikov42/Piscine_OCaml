module type Watchtower =
sig
	type hour
	val zero : hour
	val add : hour -> hour -> hour
	val sub : hour -> hour -> hour
end

module Watchtower =
struct
	type hour = int
	let zero = ( 12 : hour )
	let add ( h1 : hour ) ( h2 : hour ) =
		if (h1 - h2) mod 12 = 0 then
			( 12 : hour )
		else
			( ((h1 + h2) mod 12) : hour )

	let sub ( h1 : hour ) ( h2 : hour ) =
		if (h1 - h2) mod 12 = 0 then
			( 12 : hour )
		else if ((h1 - h2) mod 12) < 0 then
			( (((h1 - h2) mod 12) * -1) : hour )
		else
			( ((h1 - h2) mod 12) : hour )
end
