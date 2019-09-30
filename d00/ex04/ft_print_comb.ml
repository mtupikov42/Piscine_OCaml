let ft_print_comb () =
	for i = 0 to 9 do
		for j = i + 1 to 9 do
			for k = j + 1 to 9 do
				begin	
					print_int i;
					print_int j;
					print_int k;
					print_string " "
				end;
			done;
		done;
	done;
	print_string "\n"

let () = ft_print_comb ()
