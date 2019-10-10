let generate_alkane_name num =
	match num with
	|  1 -> "Methane"
	|  2 -> "Ethane"
	|  3 -> "Propane"
	|  4 -> "Butane"
	|  5 -> "Pentane"
	|  6 -> "Hexane"
	|  7 -> "Heptane"
	|  8 -> "Octane"
	|  9 -> "Nonane"
	| 10 -> "Decane"
	| 11 -> "Undecane"
	| 12 -> "Dodecane"
	|  _ -> "yo mama"

let generate_alkane_atom_list num =
	let ( carb_list : Atom.atom list ) = List.init num (fun _ -> new Carbon.carbon) in
	let ( hydro_list : Atom.atom list ) = List.init ((2 * num) + 2) (fun _ -> new Hydrogen.hydrogen) in
	carb_list @ hydro_list

class virtual alkane
	( n : int ) =
	object (self)
		inherit Molecule.molecule (generate_alkane_name n) (generate_alkane_atom_list n)

	end