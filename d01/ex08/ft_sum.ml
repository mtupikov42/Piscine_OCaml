let ft_sum func lBound uBound =
	if uBound < lBound then
		nan
	else
		let rec rec_sum sum it =
			if it > uBound then
				sum
			else
				rec_sum (sum +. (func it)) (it + 1)
		in
		rec_sum 0. lBound

let pow2 i =
	float_of_int (i * i)

let main () =
	print_endline (string_of_float (ft_sum pow2 1 10));
	print_endline (string_of_float (ft_sum pow2 1 10000000));
	print_endline (string_of_float (ft_sum pow2 (-100) 100));
	print_endline (string_of_float (ft_sum pow2 1 1));
	print_endline (string_of_float (ft_sum pow2 1 0))

let () = main ()
