let read_joke_line is str =
	let line = input_line is in

	if String.equal line "#" then
		raise (Failure "start of another joke")
	else
		str ^ line ^ "\n"

let read_joke is =
	let joke = ref "" in

	try
		while true do
			joke := read_joke_line is !joke			
		done;

		!joke
	with
	| Failure str ->
		!joke

let append_str_to_array arr str =
	let appended_arr = Array.make 1 str in
	Array.append arr appended_arr

let file_to_array filename =
	let input_stream = open_in filename in
	let jokes_array = ref (Array.make 0 "") in

	try
		while true do
			let line = read_joke input_stream in
			if String.length line != 0 then
				jokes_array := append_str_to_array !jokes_array line
		done;

		!jokes_array
	with
		| End_of_file ->
			close_in input_stream;
			!jokes_array
		| ex ->
			close_in_noerr input_stream;
			raise (Failure "read file error")

let get_random_joke arr =
	Array.get arr (Random.int (Array.length arr))

let main () =
	Random.self_init();

	if (Array.length Sys.argv) = 2 then
		let filename = Sys.argv.(1) in
		let jokes_array = file_to_array filename in

		if Array.length jokes_array != 0 then
			print_string (get_random_joke jokes_array)
	else
		()

let () = main ()
