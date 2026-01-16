defmodule Fibonacci do
  def generate(n), do: do_generate(n, 0, 1)

  # When n reaches 0, we return the accumulated 'a'
  defp do_generate(0, a, _b), do: a

  defp do_generate(n, a, b) do
    IO.puts("Step #{n}: Current value is #{a}")
    # We slide the window: b becomes the new a, and (a+b) becomes the new b
    do_generate(n - 1, b, a + b)
  end
end

IO.puts("Result: #{Fibonacci.generate(10)}")
