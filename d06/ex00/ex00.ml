module StringSetType = struct
	type t = string

	let compare s1 s2 =
		String.compare s1 s2
end

module StringSet = Set.Make(StringSetType)

let () =
	let set = List.fold_right StringSet.add [ "foo"; "bar"; "baz"; "qux" ] StringSet.empty in
	StringSet.iter print_endline set;
	print_endline (StringSet.fold ( ^ ) set "")