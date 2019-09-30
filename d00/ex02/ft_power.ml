let rec ft_power value power =
	if power < 1 then
		1
	else
		value * ft_power value (power - 1)

let main () =
	print_int (ft_power 0 1);
	print_char '\n';
	print_int (ft_power 2 2);
	print_char '\n';
	print_int (ft_power 10 2);
	print_char '\n';
	print_int (ft_power (-1) 2);
	print_char '\n';
	print_int (ft_power 69 0);
	print_char '\n'

let () = main ()
