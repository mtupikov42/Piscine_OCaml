let generate_alkane_name num =
	"kek"

let generate_alkane_atom_list num =
	let ( carb_list : Atom.atom list ) = List.init num (fun _ -> new Carbon.carbon) in
	let ( hydro_list : Atom.atom list ) = List.init ((2 * num) + 2) (fun _ -> new Hydrogen.hydrogen) in
	carb_list @ hydro_list

class alkane
	( n : int ) =
	object (self)
		inherit Molecule.molecule (generate_alkane_name n) (generate_alkane_atom_list n)

	end