defmodule BinarySearch do
  @doc """
  Performs a binary search on a sorted list.
  Returns {:ok, index} if found, :not_found otherwise.
  """
  def search(list, target) do
    do_search(list, target, 0, length(list) - 1)
  end

  defp do_search(_list, _target, low, high) when low > high, do: :not_found

  defp do_search(list, target, low, high) do
    mid = div(low + high, 2)
    value = Enum.at(list, mid)

    cond do
      value == target -> {:ok, mid}
      value > target -> do_search(list, target, low, mid - 1)
      value < target -> do_search(list, target, mid + 1, high)
    end
  end
end

list = [10, 20, 30, 40, 50, 60, 70, 80, 90]
IO.inspect(BinarySearch.search(list, 40))
IO.inspect(BinarySearch.search(list, 15))
