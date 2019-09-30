let is_alpha c =
	c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z'

let rotate_once c =
	if is_alpha c = false then
		c
	else if c = 'z' || c = 'Z' then
		char_of_int ((int_of_char c) - 25)
	else
		char_of_int ((int_of_char c) + 1)

let rec ft_rot_n n str =
	if n = 0 then
		str
	else
		let retStr = String.map rotate_once str in ft_rot_n (n - 1) retStr

let main () =
	print_endline (ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz");
	print_endline (ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz");
	print_endline (ft_rot_n 42 "0123456789");
	print_endline (ft_rot_n 2 "OI2EAS67B9");
	print_endline (ft_rot_n 0 "Damned !");
	print_endline (ft_rot_n 69 "");
	print_endline (ft_rot_n 1 "NBzlk qnbjr !")

let () = main ()
