let rec sum lst =
  match lst with
  | [] -> 0
  | x :: xs -> x + sum xs 
  | _ -> 0

let () =
  let nums =
    read_line ()
    |> String.split_on_char ' '
    |> List.map int_of_string
  in
  Printf.printf "%d\n" (sum nums)
