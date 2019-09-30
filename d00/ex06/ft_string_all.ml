let rec check_str pred str i =
	let strLength = String.length str - 1 in
	if i > strLength then
		true
	else if not (pred (String.get str i)) then
		false
	else
		check_str pred str (i + 1)

let ft_string_all pred str =
	if String.length str = 0 then
		false
	else
		check_str pred str 0

let is_digit c =
	c >= '0' && c <= '9'

let is_alpha c =
	c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z'

let main () =
	Printf.printf "%B\n" (ft_string_all is_digit "0123456789");
	Printf.printf "%B\n" (ft_string_all is_digit "000cock999");
	Printf.printf "%B\n" (ft_string_all is_digit "");
	Printf.printf "%B\n" (ft_string_all is_alpha "dawdawdwada");
	Printf.printf "%B\n" (ft_string_all is_alpha "1488")

let () = main ()
