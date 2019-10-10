class virtual molecule
	( m_name : string )
	( m_atoms : Atom.atom list ) =
	object (self)
		method name =
			m_name

		method formula =
			let atoms_comparator a1 a2 =
				let a1num = a1#atomic_number in
				let a2num = a2#atomic_number in
				if a1num != a2num then
					match a1num with
					| 6 -> -1
					| 1 ->
						begin
							match a2num with
							| 6 -> 1
							| _ -> -1
						end
					| _ ->
						let a1sym = a1#symbol in
						let a2sym = a2#symbol in
						String.compare a1sym a2sym
				else
					0
			in

			let sorted_atoms = List.stable_sort atoms_comparator m_atoms in

			let rec get_formula atoms it =
				let string_num_of_atoms num =
					if num <= 1 then
						""
					else
						string_of_int num
				in
				match atoms with
				| a1 :: a2 :: tail ->
					if it = 0 && a1#equals a2 then
						a1#symbol ^ (get_formula (a2 :: tail) (it + 1))
					else if it = 0 then
						a1#symbol ^ (get_formula (a2 :: tail) 0)
					else if a1#equals a2 then
						get_formula (a2 :: tail) (it + 1)
					else
						(string_num_of_atoms (it + 1)) ^ (get_formula (a2 :: tail) 0)
				| a :: [] ->
					if it = 0 then
						a#symbol
					else
						string_num_of_atoms (it + 1)
				| _ -> ""
			in

			get_formula sorted_atoms 0

		method to_string =
			let rec list_to_string atoms i =
				match atoms with
				| head :: tail ->
					let atom_str = head#to_string in
					"    "
					^ (string_of_int i)
					^ ") "
					^ atom_str
					^ "\n"
					^ (list_to_string tail (i + 1))
				| [] -> ""
			in
			"Molecule ("
			^ m_name
			^ ") with atoms:\n"
			^ (list_to_string m_atoms 0)

		method equals ( other : molecule ) =
			String.compare m_name other#name

	end