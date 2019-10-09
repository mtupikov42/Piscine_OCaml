class people (name : string) =
	object (self)
		val hp = ( 100 : int )

		method to_string =
			"Name: "
			^ name
			^ "; HP: "
			^ (string_of_int hp)

		method talk =
			print_endline ("I’m "
							^ name
							^ "! Do you know the Doctor?")

		method die =
			print_endline "Aaaarghh!"

		initializer print_endline (name ^ " was born.")
	end
