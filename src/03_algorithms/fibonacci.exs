defmodule Fibonacci do
  def generate(0), do: 0
  def generate(1), do: 1
  def generate(n), do: generate(n - 1) + generate(n - 2)
end

n = 10
IO.puts("The #{n}th Fibonacci number is: #{Fibonacci.generate(n)}")
