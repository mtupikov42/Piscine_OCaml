class dalek =
	object (self)
		val mutable name = ""
		val mutable hp = ( 100 : int )
		val mutable shield = true

		method to_string =
			"Dalek: "
			^ name
			^ "; HP: "
			^ (string_of_int hp)
			^ "; shield: "
			^ (string_of_bool shield)

		method talk =
			let rnd_num = Random.int 4 in
			match rnd_num with
			| 0 -> print_endline ("Explain! Explain!")
			| 1 -> print_endline ("Exterminate! Exterminate!")
			| 2 -> print_endline ("I obey!")
			| 3 -> print_endline ("You are the Doctor! You are the enemy of the Daleks!")
			| _ -> ()

		method exterminate ( human : People.people ) =
			human#take_damage 100;
			human#die;
			shield <- (not shield)

		method die =
			print_endline "Emergency Temporal Shift!"

		initializer name <- self#generate_name ((Random.int 4) + 1)

		method private generate_name length =
			let gen () =
				match Random.int(26 + 26 + 10) with
				| n when n < 26 ->
					int_of_char 'a' + n
				| n when n < 26 + 26 ->
					int_of_char 'A' + n - 26
				| n ->
					int_of_char '0' + n - 26 - 26
			in
			let gen _ = String.make 1 (char_of_int (gen ())) in
			"Dalek" ^ (String.concat "" (Array.to_list (Array.init length gen)))
	end