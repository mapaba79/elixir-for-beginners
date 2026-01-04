# Logic Rules
defmodule Game do
  # --- Player 1 Wins ---
  def play(:rock, :scissors), do: "Rock crushes scissors! Player 1 wins."
  def play(:paper, :rock), do: "Paper covers Rock! Player 1 wins."
  def play(:scissors, :paper), do: "Scissors cuts paper! Player 1 wins."

  # --- Player 2 Wins --- 
  def play(:scissors, :rock), do: "Rock crushes scissors! Player 2 wins."
  def play(:rock, :paper), do: "Paper covers Rock! Player 2 wins."
  def play(:paper, :scissors), do: "Scissors cuts paper! Player 2 wins."

  # --- Tie and Defaults ---
  def play(p1, p2) when p1 == p2, do: "It's a tie!"
  def play(_, _), do: "Invalid game state."

  # Interaction Logic
  def start do
    p1 = get_choice("Player 1")
    p2 = get_choice("Player 2")
    IO.puts("\nResult: " <> play(p1, p2))
  end

  defp get_choice(name) do
    input =
      IO.gets("#{name}, enter choice: ")
      |> String.trim()
      |> String.downcase()
      |> String.to_atom()

    # Simple validation: check if the input is valid
    if input in [:rock, :paper, :scissors] do
      input
    else
      get_choice(name)
    end
  end
end

# Start the game
Game.start()
