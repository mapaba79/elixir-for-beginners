defmodule SimpleQueue do
  defstruct items: []

  def new, do: %SimpleQueue{}

  def enqueue(%SimpleQueue{items: items}, item) do
    %SimpleQueue{items: items ++ [item]}
  end

  def dequeue(%SimpleQueue{items: []}), do: {:error, :empty}

  def dequeue(%SimpleQueue{items: [head | tail]}) do
    {:ok, head, %SimpleQueue{items: tail}}
  end
end

# Testing the queue
q =
  SimpleQueue.new()
  |> SimpleQueue.enqueue("Fedora")
  |> SimpleQueue.enqueue("Elixir")

{:ok, item, q} = SimpleQueue.dequeue(q)
IO.puts("Dequeued: #{item}")

IO.inspect(q)
