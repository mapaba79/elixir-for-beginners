defmodule Sort do
  def selection_sort([]), do: []

  def selection_sort(list) do
    # Find the minimum element in the current list
    min_val = Enum.min(list)

    # Remove the first occurrence of that minimum
    remaining_list = List.delete(list, min_val)

    # Prepend the min to the result of sorting the rest
    [min_val | selection_sort(remaining_list)]
  end
end

# Usage: Sort.selection_sort([5, 2, 9, 1]) -> [1, 2, 5, 9]
