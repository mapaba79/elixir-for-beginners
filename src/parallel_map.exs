[1, 2, 3, 4, 5]
|> Enum.map(fn x ->
  Task.async(fn ->
    :timer.sleep(1000)
    x * x
  end)
end)
|> Enum.map(&Task.await/1)
