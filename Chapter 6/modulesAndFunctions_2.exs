defmodule Times do
    def triple(n), do: n * 3
end

defmodule Times, do: (def triple(n), do: n * 3)

IO.puts Times.triple(4)