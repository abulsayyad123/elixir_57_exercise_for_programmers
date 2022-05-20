defmodule CharactersCountTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Elixir57ExerciseForProgrammers

  # Create a program that prompts for an input string and displays output that shows the input string and the number of
  # characters the string contains.

  # Example Output
  # What is the input string? Homer
  # Homer has 5 characters.

  describe "get_count/0" do
    test "it prompt user to enter string" do
      assert capture_io("Brian", fn ->
        CharactersCount.get_count
      end) =~ "What is the input string?"
    end
  end

  describe "get_char_count_message/1" do
    test "it returns character count with message of passed name" do
      assert CharactersCount.get_char_count_message("Hello") == "Hello has 5 characters."
    end
  end
end
