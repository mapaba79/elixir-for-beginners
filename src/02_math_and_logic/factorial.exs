defmodule Calculator do
  # Base case: factorial of 0 is 1
  def factorial(0), do: 1

  # Recursive case: n * factorial of (n-1)
  def factorial(n) when n > 0 do
    n * factorial(n - 1)
  end
end

# 120
IO.puts(Calculator.factorial(6))
