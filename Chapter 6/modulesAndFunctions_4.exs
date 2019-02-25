defmodule Sum do
    def of(0), do: 0
    def of(n), do: of(n-1) + n
end

IO.puts Sum.of(5)