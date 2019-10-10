class people (name : string) =
	object (self)
		val mutable hp = ( 100 : int )

		method to_string =
			"Name: "
			^ name
			^ "; HP: "
			^ (string_of_int hp)

		method take_damage v =
			let new_hp = min (hp - v) 0 in
			print_endline (name ^ " took " ^ (string_of_int v) ^ " damage!");
			hp <- new_hp

		method talk =
			print_endline ("I’m "
							^ name
							^ "! Do you know the Doctor?")

		method die =
			print_endline "Aaaarghh!"

		initializer print_endline (name ^ " was born.")
	end
