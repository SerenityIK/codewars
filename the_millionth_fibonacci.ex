defmodule Fib do

  # Using Dijkstra's algorithm
  
  import Integer
  
  
  def fib(n) when n < 0 and is_odd(n), do: fib_do(-n) 
  def fib(n) when n < 0, do: -fib_do(-n)
  def fib(n), do: fib_do(n)

  def fib_do(0), do: 0
  def fib_do(1), do: 1
  def fib_do(n), do: fibi(2 * (pos(n * 2 + 1) - 1), 0, 1)

  def pos(d) do
    cond do
      d < 2 -> d
      true -> pos(d/2)
    end
  end

  def fibi(x, a, b) do
    cond do
      x == 0.5 -> (a + a + b) * b
      x == 1 -> b
      x > 1 ->
        aa = a * a + b * b
        bb = (a + a + b) * b
        fibi(2 * (x - 1), bb, aa + bb)
      true ->
        aa = a * a + b * b
        bb = (a + a + b) * b
        fibi(2 * x, aa, bb)
    end
  end

end
