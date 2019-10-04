let main () = 
	let t = Value.all in
	let rec loop list =
		match list with
		| item :: tail ->
			print_string "Value.toString : ";
			print_endline (Value.toString item);
			print_string "Value.toStringVerbose : ";
			print_endline (Value.toStringVerbose item);
			print_string "Value.toInt : ";
			print_endline (string_of_int (Value.toInt item));
			print_string "Value.toString (Value.next) : ";
			print_endline (Value.toString (Value.next item));
			print_string "\n";
			loop tail
		| [] -> ()
	in
	loop t

let () = main ()
