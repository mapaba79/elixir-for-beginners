defmodule GuessingGame do
  def play do
    # 1. Generate a random number between 1 and 100
    secret_number = :rand.uniform(100)
    IO.puts("I have chosen a secret number between 1 and 100.")

    # 2. Start the game loop
    ask_guess(secret_number)
  end

  defp ask_guess(secret_number) do
    # 3. Get input from the user
    guess =
      IO.gets("Input your guess: ")
      |> String.trim()
      |> Integer.parse()

    # 4. Handle the input (Pattern Matching)
    case guess do
      {num, _} ->
        check_guess(num, secret_number)

      :error ->
        IO.puts("Please type a valid number!")
        ask_guess(secret_number)
    end
  end

  defp check_guess(guess, secret_number) do
    cond do
      guess < secret_number ->
        IO.puts("Too small! 📉")
        # Loop again
        ask_guess(secret_number)

      guess > secret_number ->
        IO.puts("Too Big! 📈")
        # Loop again
        ask_guess(secret_number)

      guess == secret_number ->
        IO.puts("You win! 🎉 The number was #{secret_number}.")
    end
  end
end

# Start the game:
GuessingGame.play()
