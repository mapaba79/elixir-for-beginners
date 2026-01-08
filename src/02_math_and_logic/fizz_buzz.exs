defmodule MathLogic do
  def fizzbuzz(n) do
    case {rem(n, 3), rem(n, 5)} do
      {0, 0} -> "FizzBuzz"
      {0, _} -> "Fizz"
      {_, 0} -> "Buzz"
      _ -> n
    end
  end

  # Running it for a range
  def run_fizzbuzz(range) do
    range
    |> Enum.map(&fizzbuzz/1)
    # Force it to print everything
    |> IO.inspect(limit: :infinity)
  end
end

MathLogic.run_fizzbuzz(1..9_999_999_999_999_999_999_999_999_999_999_999_999_999_999)
