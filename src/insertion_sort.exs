defmodule Sort do
  def insertion_sort(list), do: do_insertion_sort(list, [])

  # Base case: nothing left to sort
  defp do_insertion_sort([], sorted), do: sorted

  # Take the head of the unsorted list and insert it into the shorted part
  defp do_insertion_sort([h | t], sorted) do
    do_insertion_sort(t, insert(h, sorted))
  end

  # Helper to find where to put the element in the sorted list
  defp insert(x, []), do: [x]
  defp insert(x, [h | t]) when x <= h, do: [x, h | t]
  defp insert(x, [h | t]), do: [h | insert(x, t)]
end

# Usage: Sort.insertion_sort([5, 2, 9, 1]) -> [1, 2, 5, 9]
