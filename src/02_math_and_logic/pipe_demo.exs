"   Elixir is Awesome   "
|> String.trim()
|> String.capitalize()
|> String.replace("awesome", "Powerful")
|> IO.puts()

# Math example
1..10
|> Enum.map(fn x -> x * 2 end)
|> Enum.filter(fn x -> x > 10 end)
|> Enum.sum()
# Expected 12 + 14 + 16 + 18 + 20 = 80
|> IO.puts()
