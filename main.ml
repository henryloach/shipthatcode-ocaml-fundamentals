let () =
  let n = int_of_string (read_line ()) in
  let read_n n =
  let rec aux k acc =
    if k = 0 then acc
    else aux (k - 1) (int_of_string (read_line ()) :: acc)
  in
  aux n [] in
  read_n n
  |> List.fold_left (+) 0
  |> Printf.printf "%d"