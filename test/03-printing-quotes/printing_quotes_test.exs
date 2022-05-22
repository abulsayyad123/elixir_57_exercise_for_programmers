defmodule PrintingQuotesTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Elixir57ExerciseForProgrammers

  # Quotation marks are often used to denote the start and end
  # of a string. But sometimes we need to print out the quotation
  # marks themselves by using escape characters.
  # Create a program that prompts for a quote and an author.
  # Display the quotation and author as shown in the example
  # output.

  # Example Output
  # What is the quote? These aren't the droids you're looking for.
  # Who said it? Obi-Wan Kenobi
  # Obi-Wan Kenobi says, "These aren't the droids you're looking for."

  # Constraints
  # • Use a single output statement to produce this output,
  # using appropriate string-escaping techniques for quotes.
  # • If your language supports string interpolation or string
  # substitution, don’t use it for this exercise. Use string
  # concatenation instead.

  describe "get_quotes/0" do
    test "it prompt user to enter quotes" do
      assert capture_io("These aren't the droids you're looking for", fn ->
        PrintingQuotes.get_quotes
      end) =~ "What is the quote?"
    end
  end

  describe "get_author/0" do
    test "it prompt user to enter author" do
      assert capture_io("Obi-Wan Kenobi", fn ->
        PrintingQuotes.get_author
      end) =~ "Who said it?"
    end
  end
end
