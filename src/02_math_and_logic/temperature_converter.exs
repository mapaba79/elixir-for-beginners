defmodule TemperatureConverter do
  @doc """
  Converts Celsius to Fahrenheit.
  Formula: (Celsius * 9/5) + 32
  """
  def celsius_to_fahrenheit(celsius) do
    celsius * 9 / 5 + 32
  end

  @doc """
  Converts Fahrenheit to Celsius.
  Formula: (Fahrenheit - 32) * 5/9
  """
  def fahrenheit_to_celsius(fahrenheit) do
    (fahrenheit - 32) * 5 / 9
  end
end

# Example usage:
IO.puts("25°C in Fahrenheit is: #{TemperatureConverter.celsius_to_fahrenheit(25)}")
IO.puts("77°F in Celsius is: #{TemperatureConverter.fahrenheit_to_celsius(77)}")
