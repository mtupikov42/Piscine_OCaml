class water =
	object (self)
		inherit Molecule.molecule "water" [
			new Hydrogen.hydrogen;
			new Oxygen.oxygen;
			new Hydrogen.hydrogen
		]
	end