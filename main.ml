let rec factorial n = 
    if n <= 1 then 1
    else n * factorial (n - 1)

let () = 
    let n = int_of_string (read_line ()) in
    Printf.printf "%d\n" (factorial n)