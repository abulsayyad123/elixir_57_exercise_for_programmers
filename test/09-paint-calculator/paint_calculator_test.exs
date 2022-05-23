defmodule PaintCalculatorTest do
  use ExUnit.Case
  doctest Elixir57ExerciseForProgrammers

  # Calculate gallons of paint needed to paint the ceiling of a
  # room. Prompt for the length and width, and assume one
  # gallon covers 350 square feet. Display the number of gallons
  # needed to paint the ceiling as a whole number.

  # Example Output
  # You will need to purchase 2 gallons of
  # paint to cover 360 square feet.
  # Remember, you can’t buy a partial gallon of paint. You must
  # round up to the next whole gallon.

  # Constraints
  # • Use a constant to hold the conversion rate.
  # • Ensure that you round up to the next whole number.

  # Challenges
  # • Revise the program to ensure that inputs are entered as
  # numeric values. Don’t allow the user to proceed if the
  # value entered is not numeric.

  describe "area_of_room" do
    test "it returns area of reactangle as per passed length & width" do
      assert PaintCalculator.area_of_room(15, 20) == 300
    end

    test "it should return error if passed length is not number" do
      assert PaintCalculator.area_of_room(15, "20") == "Please pass correct input"
    end

    test "it should return error if passed width is not number" do
      assert PaintCalculator.area_of_room("15", 20) == "Please pass correct input"
    end

    test "it should return error if no length is passed" do
      assert PaintCalculator.area_of_room(15) == "Please pass correct input"
    end

    test "it should return error if no width is passed" do
      assert PaintCalculator.area_of_room(15) == "Please pass correct input"
    end
  end

  describe "gallons_required?" do
    test "it returns number of gallons required as per passed area" do
      assert PaintCalculator.gallons_required?(340) == 1
    end

    test "it should return error if no area is passed" do
      assert PaintCalculator.gallons_required?() == "Please pass correct input"
    end
  end
end
