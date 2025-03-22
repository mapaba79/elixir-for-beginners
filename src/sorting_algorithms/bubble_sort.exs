defmodule BubbleSort do
  def sort(list), do: do_sort(list, length(list))

  defp do_sort(list, 0), do: list
  defp do_sort(list, n) do
    list
    |> bubble_pass()
    |> do_sort(n - 1)
  end

  defp bubble_pass([a, b | rest]) when a > b, do: [b | bubble_pass([a | rest])]
  defp bubble_pass([a | rest]), do: [a| bubble_pass(rest)]
  defp bubble_pass([]), do: []
end

# Example usage:
list = [5, 3, 8, 1, 2]
IO.puts("Unsorted array:")
IO.inspect(list)

IO.puts("")

sorted_list = BubbleSort.sort(list)
IO.puts("Sorted array:")
IO.inspect(sorted_list)
