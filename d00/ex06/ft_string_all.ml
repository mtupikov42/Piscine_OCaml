let ft_string_all pred str =
	let strLength = String.length in
	let rec string_checker i =
		if i < 0 || !pred (String.get str i) = false then
			false
		else
			string_checker i - 1

		true
	in
	string_checker strLength - 1

let is_digit c =
	c >= '0' && c <= '9'

let is_alpha c =
	c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z'

let main () =
	print_bool (ft_string_all is_digit "0123456789");
	print_bool (ft_string_all is_digit "000cock999");
	print_bool (ft_string_all is_digit "")

let () = main ()
