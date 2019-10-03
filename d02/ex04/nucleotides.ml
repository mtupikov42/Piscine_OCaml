type phosphate = string
type deoxyribose = string
type nucleobase = A | T | C | G | None

type nucleotide = {
	p : phosphate;
	d : deoxyribose;
	n : nucleobase
}

let generate_nucleotide nucleobase =
	match nucleobase with
    | 'A' ->
    	{ p = "phosphate"; d= "deoxyribose"; n = A}
    | 'T' ->
    	{ p = "phosphate"; d= "deoxyribose"; n = T}
    | 'C' ->
    	{ p = "phosphate"; d= "deoxyribose"; n = C}
    | 'G' ->
    	{ p = "phosphate"; d= "deoxyribose"; n = G}
    | _ ->
    	{ p = "phosphate"; d= "deoxyribose"; n = None}

let main () =
	let generateNucleobaseString item =
		match item with
		| A -> "A"
		| T -> "T"
		| C -> "C"
		| G -> "G"
		| None -> "None"
	in

	let printNucleotide item =
		match item with
		| item ->
			Printf.printf "p: %s; d: %s; n: %s\n" item.p item.d (generateNucleobaseString item.n)
	in

	printNucleotide (generate_nucleotide 'A');
	printNucleotide (generate_nucleotide 'T');
	printNucleotide (generate_nucleotide 'C');
	printNucleotide (generate_nucleotide 'G');
	printNucleotide (generate_nucleotide '@')

let () = main ()
