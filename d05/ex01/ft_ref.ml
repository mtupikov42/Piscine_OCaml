type 'a ft_ref = { mutable content : 'a }

let return var =
	let (result : 'a ft_ref) = { content = var } in
	result

let get ft_ref =
	ft_ref.content

let set ft_ref var =
	ft_ref.content <- var

let bind ft_ref func =
	func ft_ref.content

let main () =
	let v1 = return 1 in
	print_endline ("Created ft_ref: " ^ (string_of_int (get v1)));
	set v1 2;
	print_endline ("Set ft_ref to 2: " ^ (string_of_int (get v1)));

	let f1 var =
		let ref_val = return var in
		set ref_val (var * 2);
		ref_val
	in

	let v2 = bind v1 f1 in

	print_endline ("Bind v1 to f, got: " ^ (string_of_int (get v2)))


let () = main ()
