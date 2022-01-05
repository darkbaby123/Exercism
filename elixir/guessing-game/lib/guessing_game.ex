defmodule GuessingGame do
  @spec compare(secret_number :: integer(), guess :: integer()) :: String.t()
  def compare(secret_number, guess \\ :no_guess)
  def compare(_guess, :no_guess), do: "Make a guess"
  def compare(guess, guess), do: "Correct"
  def compare(secret_number, guess) when abs(secret_number - guess) == 1, do: "So close"
  def compare(secret_number, guess) when secret_number > guess, do: "Too low"
  def compare(secret_number, guess) when secret_number < guess, do: "Too high"
end
