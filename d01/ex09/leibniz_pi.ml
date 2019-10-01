let leibniz_pi delta =
	let formula it =
		let float_it = float_of_int it in
		let uVal = (-1.) ** float_it in
		let lVal = 2. *. float_it +. 1. in
		4. *. (uVal /. lVal)
	in

	if delta < 0. then
		-1
	else
		let pi = 4. *. atan 1. in
		let rec recPi sum it =
			let currDelta =
				if (sum -. pi) >= 0. then
					sum -. pi
				else
					pi -. sum
			in
			if currDelta < delta then
				it
			else
				recPi (sum +. formula (it + 1)) (it + 1)
		in
		recPi (formula 0) 0

let main () =
	print_endline (string_of_int (leibniz_pi (-1.)));
	print_endline (string_of_int (leibniz_pi 2.));
	print_endline (string_of_int (leibniz_pi 1.));
	print_endline (string_of_int (leibniz_pi 0.001));
	print_endline (string_of_int (leibniz_pi 1e-8))

let () = main ()
