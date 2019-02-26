defmodule MyList do
    def maximum([], mx), do: mx

    def maximum([head|tail], mx) when mx <= head do
        maximum(tail, head)
    end
    def maximum([head|tail], mx) when mx > head do
        maximum(tail, mx)
    end
end

l = [4, -9, 10, 2, -1]
IO.puts MyList.maximum(l, List.first(l))