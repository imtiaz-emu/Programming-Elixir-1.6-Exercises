defmodule MyEnum do
  def all?([], _func), do: true
  def all?([head|tail], func) do
    if func.(head), do: all?(tail, func), else: false
  end

  def each([]), do: :ok
  def each([head|tail]) do
    IO.puts head
    each(tail)
  end

  def filter([], _func), do: []
  def filter([head|tail], func) do
    if func.(head), do: [head | filter(tail, func)], else: filter(tail, func)
  end

  def split(list, n) when n >= 0, do: _split(list, n, [])
  def split(list, n) when n < 0, do: _split(list, n + length(list), [])
  defp _split([head|tail], n, result) when length(result) < n do
    _split(tail, n, result ++ [head])
  end
  defp _split(list, _n, result), do: {result, list}

  def each(list, n) when n >= 0, do: _each(list, n, [])
  def each(list, n) when n < 0, do: _each(list, n + length(list), [])
  defp _each([head|tail], n, result) when length(result) < n do
    _each(tail, n, result ++ [head])
  end
  defp _each(_list, _n, result), do: result

end

IO.inspect MyEnum.all?([1,2,3,4], &(&1 < 3))
IO.inspect MyEnum.each([1,2,3,4])
IO.inspect MyEnum.filter([1,2,3,4], &(&1 < 3))
IO.inspect MyEnum.split([1,2,3,4], 2)
IO.inspect MyEnum.split([1,2,3,4], -1)
IO.inspect MyEnum.split([1,2,3,4], 0)
IO.inspect MyEnum.each([1,2,3,4], 2)
IO.inspect MyEnum.each([1,2,3,4], -2)
IO.inspect MyEnum.each([1,2,3,4], 0)
