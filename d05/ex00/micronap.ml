let my_sleep () =
	Unix.sleep 1

let micronap seconds =
	for i = 0 to seconds - 1 do
		my_sleep ()
	done

let main () =
	if (Array.length Sys.argv) = 2 then
		let arg = Sys.argv.(1) in
		let seconds =
			try
				int_of_string arg
			with
			| _ -> 0
		in
		micronap seconds
	else
		()

let () = main ()
