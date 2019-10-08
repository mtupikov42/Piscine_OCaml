module StringHashType = struct	
	type t = string

	let equal s1 s2 =
		String.equal s1 s2

	let hash str =
		let rec rec_hash it hash_val pow =
			if it < String.length str then
				let m = int_of_float (1e9 +. 9.0) in
				let sym = String.get str it in
				let new_hash = (hash_val + ((int_of_char sym) - 42) * pow) mod m in
				let new_pow = (pow * 31) mod m in
				rec_hash (it + 1) new_hash new_pow
			else
				hash_val
		in
		rec_hash 0 0 1
end

module StringHashtbl = Hashtbl.Make(StringHashType)

let () =
	let ht = StringHashtbl.create 5 in
	let values = [ "Hello"; "world"; "42"; "Ocaml"; "H" ] in
	let pairs = List.map (fun s -> (s, String.length s)) values in
	List.iter (fun (k,v) -> StringHashtbl.add ht k v) pairs;
	StringHashtbl.iter (fun k v -> Printf.printf "k = \"%s\", v = %d\n" k v) ht
