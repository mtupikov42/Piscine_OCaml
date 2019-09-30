let ft_print_alphabet () =
	for i = int_of_char ('a') to int_of_char ('z') do
		print_char (char_of_int(i))
	done;
	print_char '\n'

let () = ft_print_alphabet ()
