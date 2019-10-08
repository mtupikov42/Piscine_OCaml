let rec parse_strings_list lst out_lst status =
	match lst with
	| str :: tail ->
		let parse_str str = 
			try
				let num = float_of_string str in
				(num :: (parse_strings_list tail out_lst status))
			with
			| _ ->
				status := str;
				out_lst
		in
		parse_str str
	| [] -> out_lst

let get_raw_strings_list line =
	String.split_on_char ',' line

let parse_data is =
	let line = input_line is in
	let raw_strings_list = get_raw_strings_list line in
	let detect_status = ref "NO_STATUS" in
	let data = parse_strings_list raw_strings_list [] detect_status in
	(Array.of_list data, !detect_status)

let examples_of_file filename =
	let input_stream = open_in filename in
	let result = ref [] in

	try
		while true do
			let (data, str) = parse_data input_stream in
			result := (!result @ [(data, str)])
		done;

		!result
	with
		| End_of_file ->
			close_in input_stream;
			!result
		| ex ->
			close_in_noerr input_stream;
			raise (Failure "read file error")

let rec print_floats_arr arr =
	for i = 0 to Array.length arr - 1 do
		let elem = arr.(i) in
		print_float elem;
		print_char ',';
	done

let rec print_data lst =
	match lst with
	| (data, status) :: tail ->
		print_floats_arr data;
		print_endline ("status: " ^ status);
		print_data tail
	| [] -> ()

let main () =
	let data = examples_of_file "ionosphere.train.csv" in
	print_data data

let () = main ()
