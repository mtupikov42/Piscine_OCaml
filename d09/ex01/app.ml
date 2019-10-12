module type App =
sig
	type project

	val zero : project
	val combine : project -> project -> project
	val fail : project -> project
	val success : project -> project
end

module App =
struct
	type project = string * string * int

	let zero = ( ("", "", 0) : project )

	let combine pr1 pr2 =
		let (pr1_name, pr1_fst, pr1_grade) = pr1 in
		let (pr2_name, pr2_fst, pr2_grade) = pr2 in

		let new_grade = (pr1_grade + pr2_grade) / 2 in

		let new_status =
			if new_grade >= 80 then
				"succeed"
			else
				"failed"
		in

		( (pr1_name ^ pr2_name), new_status, new_grade )

	let fail ( pr1 : project ) =
		let (pr1_name, _, _) = pr1 in
		( (pr1_name, "succeed", 0) : project )

	let success ( pr1 : project ) =
		let (pr1_name, _, _) = pr1 in
		( (pr1_name, "failed", 80) : project )
end