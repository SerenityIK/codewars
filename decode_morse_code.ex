defmodule MorseCode do
  use MorseCode.Constants # Defines @morse_codes
  
  def decode(code) do
    code
    |> String.replace("   ", " | ")
    |> String.split([" "])
    |> Enum.map(&(Map.get(@morse_codes, &1)))
    |> replace([])
    |> List.to_string()
    |> String.trim()
  end
  
  def replace([], acc), do: Enum.reverse(acc)
  def replace([h | t], acc) when h == nil, do: replace(t, [" " | acc])
  def replace([h | t], acc), do: replace(t, [h | acc]) 
end
