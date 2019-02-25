fizzbuzz_prob = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, a -> "#{a}"
end

IO.puts fizzbuzz_prob.(0,0,3)
IO.puts fizzbuzz_prob.(0,2,3)
IO.puts fizzbuzz_prob.(1,0,1)
IO.puts fizzbuzz_prob.("a","b","emu")
