class virtual atom
	( m_name : string )
	( m_symbol : string )
	( m_atomic_number : int ) =
	object (self)

	method name =
		m_name

	method symbol =
		m_symbol

	method atomic_number =
		m_atomic_number

	method to_string =
		"Atom ("
		^ m_name
		^ ", "
		^ m_symbol
		^ ", "
		^ (string_of_int m_atomic_number)
		^ ")"

	method equals ( other : atom ) = 
		m_atomic_number = other#atomic_number

	end