defmodule Chop do

    def average(low, high), do: div(low + high, 2)
    def guess(x, low..high) when x > div(low + high, 2) do
        IO.puts "Is it #{average(low, high)}"
        guess(x, average(low, high)..high)
    end
    def guess(x, low..high) when x < div(low + high, 2) do
        IO.puts "Is it #{average(low, high)}"
        guess(x, low..average(low, high))
    end

    def guess(x, low..high), do: IO.puts average(low, high)
end

IO.puts Chop.guess(273, 1..1000)