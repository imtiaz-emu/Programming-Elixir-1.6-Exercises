defmodule MyList do
    def span(from, to) when from < to do
        [from | span(from + 1, to)]
    end

    def span(from, _to), do: [from]
end

IO.inspect MyList.span(3, 6)