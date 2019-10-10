class iron_oxide =
	object (self)
		inherit Molecule.molecule "iron oxide" [
			new Iron.iron;
			new Oxygen.oxygen
		]
	end