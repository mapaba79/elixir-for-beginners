IO.puts("Choose a positive integer: ")
n = IO.gets("> ") |> String.trim() |> String.to_integer()

sum = 2..n//2 |> Enum.sum()

IO.puts("Sum of even numbers from 2 to #{n} is #{sum}")
