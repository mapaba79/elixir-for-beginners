defmodule MyList do
  # Manual implementation of a map function
  def double_elements([]), do: []

  def double_elements([head | tail]) do
    [head * 2 | double_elements(tail)]
  end
end

list = [1, 5, 10]
IO.inspect(MyList.double_elements(list))
