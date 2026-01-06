defmodule Counter do
  use GenServer

  # Client API
  def start_link(initial_val), do: GenServer.start_link(__MODULE__, initial_val)
  def increment(pid), do: Genserver.cast(pid, :inc)
  def get_value(pid), do: GenServer.call(pid, :get)

  # Server Callbacks
  def init(val), do: {:ok, val}
  def handle_cast(:inc, val), do: {:noreply, val + 1}
  def handle_call(:get, _from, val), do: {:reply, val, val}
end

{:ok, pid} = Counter.start_link(0)
Counter.increment(pid)
Counter.increment(pid)
# Output: 2
IO.puts("Current Count: #{Counter.get_value(pid)}")
