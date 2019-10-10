class ['a] army =
	object(self)
		val mutable list = ( [] : 'a list )

		method add obj =
			list <- obj :: list

		method delete =
			list <- List.tl list

		method print =
			let rec print_list lst =
				match lst with
				| head :: tail ->
					print_endline head#to_string;
					print_list tail
				| [] -> ()
			in
			print_endline "list begin ===";
			print_list list;
			print_endline "list end ==="

	end
