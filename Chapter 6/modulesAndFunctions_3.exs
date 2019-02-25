defmodule Times do
    def double(n), do: n * 2
    def quadruple(n), do: double(n) * 2
end

IO.puts Times.quadruple(4)