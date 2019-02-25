fizzbuzz_prob = fn
  0, 0, _ -> IO.puts "FizzBuzz"
  0, _, _ -> IO.puts "Fizz"
  _, 0, _ -> IO.puts "Buzz"
  _, _, a -> IO.puts "#{a}"
end

fizzbuzz_solution = fn
  n -> fizzbuzz_prob.(rem(n,3), rem(n,5), n)
end

fizzbuzz_solution.(10)
fizzbuzz_solution.(11)
fizzbuzz_solution.(12)
fizzbuzz_solution.(13)
fizzbuzz_solution.(14)
fizzbuzz_solution.(15)
fizzbuzz_solution.(16)
