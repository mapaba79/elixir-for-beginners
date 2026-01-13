# Matching a Tuple
{:ok, message} = {:ok, "Hello Fedora User!"}
IO.puts("Message: #{message}")

# Matching a List
[head | tail] = [10, 20, 30]
IO.puts("Head: #{head}")
IO.inspect(tail, label: "Tail")

# Handling specific values
case {1, 2, 3} do
  {1, x, 3} -> IO.puts("Matched! x is #{x}")
  _ -> IO.puts("This won't run")
end
