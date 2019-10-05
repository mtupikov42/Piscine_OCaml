let main () = 
	let t = Value.all in

	let tryStr fn t =
		try
			Value.toString @@ fn t
		with
			Invalid_argument str -> str
	in

	let rec loop list =
		match list with
		| item :: tail ->
			begin
				print_string "Value.toString : ";
				print_endline (Value.toString item);
				print_string "Value.toStringVerbose : ";
				print_endline (Value.toStringVerbose item);
				print_string "Value.toInt : ";
				print_endline (string_of_int (Value.toInt item));

				print_string "Value.toString (Value.next) : ";
				print_endline (tryStr Value.next item);

				print_string "Value.toString (Value.prev) : ";
				print_endline (tryStr Value.previous item);

				print_string "\n";
				loop tail
			end
		| [] -> ()
	in
	loop t

let () = main ()
