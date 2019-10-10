class methane =
	object (self)
		inherit Molecule.molecule "methane" [
			new Hydrogen.hydrogen;
			new Carbon.carbon;
			new Hydrogen.hydrogen;
			new Hydrogen.hydrogen;
			new Hydrogen.hydrogen
		]
	end