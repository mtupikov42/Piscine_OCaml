let print_pint i =
	if i < 10 then
		print_char '0';
	print_int i

let print_pair i1 i2 =
	print_pint i1;
	print_char ' ';
	print_pint i2

let ft_print_comb2 () =
	for i = 0 to 99 do
		for j = 0 to 99 do
			if i != j && i < j then
				begin
					print_pair i j;
					if i != 98 then
						print_char ',';
						print_char ' ';
				end;
		done;
	done;
	print_char '\n'

let () = ft_print_comb2 ()
