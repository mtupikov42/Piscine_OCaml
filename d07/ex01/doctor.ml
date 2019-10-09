class doctor
	(name : string)
	(age : int)
	(sidekick : People.people) =
	object (self)
		val mutable hp = ( 100 : int )

		method to_string =
			"Doctor: "
			^ name
			^ "; HP: "
			^ (string_of_int hp)
			^ "; age: "
			^ (string_of_int age)
			^ "; Companion: "
			^ sidekick#to_string

		method talk =
			print_endline ("Hi! I’m the Doctor!")

		method travel_in_time start arrival =
			let print_message time time_str =
				print_endline ("Doctor "
								^ name
								^ " has travelled "
								^ (string_of_int time)
								^ " time to "
								^ time_str)
			in

			if start < arrival then
				print_message (arrival - start) "future"
			else
				print_message (start - arrival) "past";

			print_endline "His age did not change! THIS IS TRAVEL IN TIME, NOT SPACE!";

			print_string	("        ___\n"
							^ "_______(_@_)_______\n"
							^ "| POLICE      BOX |\n"
							^ "|_________________|\n"
							^ " | _____ | _____ |\n"
							^ " | |###| | |###| |\n"
							^ " | |###| | |###| |\n"
							^ " | _____ | _____ |\n"
							^ " | || || | || || |\n"
							^ " | ||_|| | ||_|| |\n"
							^ " | _____ |$_____ |\n"
							^ " | || || | || || |\n"
							^ " | ||_|| | ||_|| |\n"
							^ " | _____ | _____ |\n"
							^ " | || || | || || |\n"
							^ " | ||_|| | ||_|| |\n"
							^ " |       |       |\n"
							^ " *****************\n")

		method use_sonic_screwdriver =
			print_endline "Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii"

		method private regenerate =
			hp <- 100

		initializer print_endline ("Doctor " ^ name ^ " was born.")
	end
