let eu_dist (arr1 : float array) (arr2 : float array) =
	let arr1_length = Array.length arr1 in
	let arr2_length = Array.length arr2 in

	let fin_length = min arr1_length arr2_length in

	let sum = ref 0.0 in

	for i = 0 to fin_length - 1 do
		let diff = arr1.(i) -. arr2.(i) in
		let powed = diff ** 2.0 in
		sum := !sum +. powed
	done;

	sum := sqrt !sum;

	!sum

let main () =
	let lst1 = 1.1 :: 2.2 :: 3.3 :: 4.4 :: 5.5 :: [] in
	let lst2 = 3.14 :: 4.15 :: 5.16 :: 6.17 :: 7.18 :: [] in

	let arr1 = Array.of_list lst1 in
	let arr2 = Array.of_list lst2 in

	print_endline (string_of_float (eu_dist arr1 arr2));

	let lst1 = 1.1 :: 2.2 :: 3.3 :: 4.4 :: 5.5 :: [] in
	let lst2 = 3.14 :: [] in

	let arr1 = Array.of_list lst1 in
	let arr2 = Array.of_list lst2 in

	print_endline (string_of_float (eu_dist arr1 arr2));

	let lst1 = 0.0 :: 3.0 :: 4.0 :: 5.0 :: [] in
	let lst2 = 7.0 :: 6.0 :: 3.0 :: (-1.0) :: [] in

	let arr1 = Array.of_list lst1 in
	let arr2 = Array.of_list lst2 in

	print_endline (string_of_float (eu_dist arr1 arr2));


	let lst1 = [] in
	let lst2 = [] in

	let arr1 = Array.of_list lst1 in
	let arr2 = Array.of_list lst2 in

	print_endline (string_of_float (eu_dist arr1 arr2))

let () = main ()
