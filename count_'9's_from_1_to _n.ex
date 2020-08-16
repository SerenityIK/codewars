defmodule Kata do
  def number9(n) do
    len = String.length(Integer.to_string(n))
    Enum.to_list(0..len)
    |> Enum.reduce(0, & count(n, &1) + &2)
  end
  
  def count(n, d) do
    powerOf10 = :erlang.trunc(:math.pow(10, d))
    nextPowerOf10 = powerOf10 * 10
    right = rem(n, powerOf10)
    roundDown = n - rem(n, nextPowerOf10)
    roundUp = roundDown + nextPowerOf10
    digit = rem(div(n, powerOf10), 10)

    cond do
      digit < 9 -> div(roundDown, 10)
      digit == 9 -> div(roundDown, 10) + right + 1
      true -> div(roundUp, 10)
    end
  end
end
