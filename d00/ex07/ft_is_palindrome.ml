let rec check_pal str i =
	let stringSize = String.length str - 1 in
	if stringSize / 2 = i then
		true
	else if String.get str i != String.get str (stringSize - i) then
		false
	else
		check_pal str (i + 1)

let ft_is_palindrome str =
	check_pal str 0

let main () =
	Printf.printf "%B\n" (ft_is_palindrome "abba");
	Printf.printf "%B\n" (ft_is_palindrome "");
	Printf.printf "%B\n" (ft_is_palindrome "your mother");
	Printf.printf "%B\n" (ft_is_palindrome "radar");
	Printf.printf "%B\n" (ft_is_palindrome "yoddoy");
	Printf.printf "%B\n" (ft_is_palindrome "i;orabgise;us")

let () = main ()
