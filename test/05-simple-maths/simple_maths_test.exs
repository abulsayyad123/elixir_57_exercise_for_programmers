defmodule SimpleMathsTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Elixir57ExerciseForProgrammers

  # You’ll often write programs that deal with numbers. And
  # depending on the programming language you use, you’ll
  # have to convert the inputs you get to numerical data types.
  # Write a program that prompts for two numbers. Print the
  # sum, difference, product, and quotient of those numbers as
  # shown in the example output:

  # Example Output
  # What is the first number? 10
  # What is the second number? 5
  # 10 + 5 = 15
  # 10 - 5 = 5
  # 10 * 5 = 50
  # 10 / 5 = 2

  # Constraints
  # • Values coming from users will be strings. Ensure that
  # you convert these values to numbers before doing the
  # math.
  # • Keep the inputs and outputs separate from the numerical
  # conversions and other processing.
  # • Generate a single output statement with line breaks in
  # the appropriate spots.

  describe "sum" do
    test "it adds passed two numbers" do
      assert SimpleMaths.sum(3,3) == 6
    end
  end

  describe "subtract" do
    test "it adds passed two numbers" do
      assert SimpleMaths.subtract(3,3) == 0
    end
  end

  describe "multiply" do
    test "it adds passed two numbers" do
      assert SimpleMaths.multiply(3,3) == 9
    end
  end

  describe "divide" do
    test "it adds passed two numbers" do
      assert SimpleMaths.divide(3,3) == 1
    end
  end
end
