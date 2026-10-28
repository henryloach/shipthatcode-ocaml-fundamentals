let () =
  let name = read_line () in
  let age = int_of_string (read_line ()) in
  let my_string = Printf.sprintf "%s is %d years old" name age in
  Printf.printf "%s" my_string
