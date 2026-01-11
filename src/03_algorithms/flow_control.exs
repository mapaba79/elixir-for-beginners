defmodule Registration do
  def verify_age(age) when age >= 18, do: {:ok, age}
  def verify_age(_), do: {:error, "Too young"}

  def create_profile(name, age) do
    with {:ok, validated_age} <- verify_age(age),
         {:ok, id} <- {:ok, :rand.uniform(1000)} do
      {:ok, %{id: id, name: name, age: validated_age}}
    else
      {:error, reason} -> {:error, "Registration failed: #{reason}"}
    end
  end
end

IO.inspect(Registration.create_profile("Bob", 20))

IO.inspect(Registration.create_profile("Alice", 12))
