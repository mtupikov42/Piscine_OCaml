let print_proj ( pr : App.App.project ) =
	match pr with
	| (name, status, grade) ->
		print_endline ("Project: "
						^ name
						^ ", status: "
						^ status
						^ ", grade: "
						^ (string_of_int grade))

let main () =
	let zerProj = App.App.zero in
	print_proj zerProj;

	let pr1 = ("pr1", "failed", 69) in
	print_proj pr1;

	let pr2 = ("pr2", "succeed", 80) in
	print_proj pr2;

	let pr3 = App.App.combine pr1 pr2 in
	print_proj pr3;

	let pr4 = ("pr4", "succeed", 100) in

	let pr5 = App.App.combine pr3 pr4 in
	print_proj pr5;

	let failPr = App.App.fail pr4 in
	print_proj failPr;

	let successPr = App.App.success failPr in
	print_proj successPr

let () = main ()
