class virtual reaction
	( start_list : Molecule.molecule list )
	( end_list : Molecule.molecule list ) =
	object (self)
		method virtual get_start: (Molecule.molecule * int) list
		method virtual get_result: (Molecule.molecule * int) list
		method virtual balance: reaction
		method virtual is_balanced: bool 
	end