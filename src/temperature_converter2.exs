defmodule TemperatureConverter do
  def start do
    IO.puts("--- Temperature Converter ---")
    IO.puts("1. Celsius to Fahrenheit")
    IO.puts("2. Fahrenheit to Celsius")

    # Get the user choice
    choice = IO.gets("Select an option (1 or 2): ") |> String.trim()

    # Get the temperature value
    input = IO.gets("Enter the temperature value: ") |> String.trim()

    # Process the input and convert
    case Float.parse(input) do
      {value, _} ->
        perform_conversion(choice, value)

      :error ->
        IO.puts("Invalid number entered.")
    end
  end

  defp perform_conversion("1", celsius) do
    result = celsius * 9 / 5 + 32
    IO.puts("#{celsius}°C is #{Float.round(result, 2)}°F")
  end

  defp perform_conversion("2", fahrenheit) do
    result = (fahrenheit - 32) * 5 / 9
    IO.puts("#{fahrenheit}°F is #{Float.round(result, 2)}°C")
  end

  defp perform_conversion(_, _) do
    IO.puts("Invalid option selected.")
  end
end

# To run the script:
TemperatureConverter.start()
