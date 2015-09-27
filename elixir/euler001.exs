"""
 * Problem: Find the sum all all numbers that are multiples of 3
 * or 5 from 1 to 999
 *
 * Solution: Sum all the multiples of 3, sum all the multiples
 * of 5, add them together, sum all the multiples of 15, and
 * subtract.
"""
defmodule Euler001 do
  def calculate do
    1..999
    |> Stream.filter(
      fn(x) ->
        cond do
          rem(x,3) == 0 ->
            true
          rem(x,5) == 0 ->
            true
          true ->
            false
        end
      end
    ) |> Enum.reduce(fn(x, acc) -> x + acc end)
  end
end

Euler001.calculate
