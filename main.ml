type shape =
  | Circle of float
  | Square of float

let area s =
  match s with
  | Circle r -> 3.14 *. r *. r
  | Square side -> side *. side

let () =
  let kind = read_line () in
  let dim = float_of_string (read_line ()) in
  let s = if kind = "circle" then Circle dim else Square dim in
  Printf.printf "%.2f\n" (area s)
