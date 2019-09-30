let ft_print_rev str =
	let stringEnd = String.length str - 1 in
	for i = stringEnd downto 0 do
		print_char (String.get str i)
	done;
	print_char '\n'

let main () =
	ft_print_rev "Hello, OCaml!";
	ft_print_rev "";
	ft_print_rev "lol\nkek\ncheburek"

let () = main ()
