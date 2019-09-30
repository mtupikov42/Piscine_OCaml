let ft_countdown value =
	if (value <= 0) then
		begin
			print_int 0;
			print_char '\n'
		end
	else
		for i = value downto 0 do
			print_int i;
			print_char '\n'
		done

let main () =
	ft_countdown (-100);
	print_char '\n';
	ft_countdown (0);
	print_char '\n';
	ft_countdown (4)

let () = main ()
