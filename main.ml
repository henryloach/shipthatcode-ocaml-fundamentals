let () =
  read_line ()
  |> String.split_on_char ' '
  |> List.map int_of_string
  |> List.filter (fun n -> n mod 2 == 0)
  |> List.map (fun x -> x * x)
  |> List.fold_left (+) 0 
  |> Printf.printf "%d\n"
