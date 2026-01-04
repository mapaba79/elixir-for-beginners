IO.puts("Enter the first number:")
a = IO.gets("> ") |> String.trim() |> String.to_integer()

IO.puts("Enter the second number:")
b = IO.gets("> ") |> String.trim() |> String.to_integer()

sum = a + b

IO.puts("The sum is: #{sum}")
