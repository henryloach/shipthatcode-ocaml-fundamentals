let sum_list xs =
  let rec aux acc = function 
  | [] -> acc
  | head :: tail -> aux (acc + head) tail
  in 
  aux 0 xs
    

let () =
  let n = int_of_string (read_line ()) in
  let rec read_n k acc =
    if k = 0 then List.rev acc
    else read_n (k - 1) (int_of_string (read_line ()) :: acc)
  in
  let nums = read_n n [] in
  Printf.printf "sum: %d\n" (sum_list nums)
