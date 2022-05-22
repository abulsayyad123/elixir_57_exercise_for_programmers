defmodule RectangleRoomTest do
  use ExUnit.Case
  doctest Elixir57ExerciseForProgrammers

  # When working in a global environment, you’ll have to
  # present information in both metric and Imperial units. And
  # you’ll need to know when to do the conversion to ensure
  # the most accurate results.
  # Create a program that calculates the area of a room. Prompt
  # the user for the length and width of the room in feet. Then
  # display the area in both square feet and square meters.

  # Example Output
  # What is the length of the room in feet? 15
  # What is the width of the room in feet? 20
  # You entered dimensions of 15 feet by 20 feet.

  # The area is
  # 300 square feet
  # 27.871 square meters

  ##################
  # The formula for this conversion is
  #   m^2 = f^2 × 0.09290304
  ##################

  # Constraints
  # • Keep the calculations separate from the output.
  # • Use a constant to hold the conversion factor.

  # Challenges
  # • Revise the program to ensure that inputs are entered as
  # numeric values. Don’t allow the user to proceed if the
  # value entered is not numeric.
  # • Create a new version of the program that allows you to
  # choose feet or meters for your inputs.

  describe "area_of_reactangle_in_feets" do
    test "it returns area of reactangle in feets as per passed length & width" do
      assert RectangleRoom.area_of_reactangle_in_feets(15, 20) == 300
    end

    test "it should return error if passed length is not number" do
      assert RectangleRoom.area_of_reactangle_in_feets(15, "20") == "Please pass correct input"
    end

    test "it should return error if passed width is not number" do
      assert RectangleRoom.area_of_reactangle_in_feets("15", 20) == "Please pass correct input"
    end

    test "it should return error if no length is passed" do
      assert RectangleRoom.area_of_reactangle_in_feets(15) == "Please pass correct input"
    end

    test "it should return error if no width is passed" do
      assert RectangleRoom.area_of_reactangle_in_feets(15) == "Please pass correct input"
    end
  end

  describe "area_of_reactangle_in_meters" do
    test "it converts passed value in square meters" do
      assert RectangleRoom.area_of_reactangle_in_meters(300) == 27.870912
    end

    test "it returns error if no value is passed" do
      assert RectangleRoom.area_of_reactangle_in_meters() == "Please pass correct input"
    end

    test "it returns error if passed value is not integer" do
      assert RectangleRoom.area_of_reactangle_in_meters("300") == "Please pass correct input"
    end
  end

  describe "format_output" do
    test "it returns formatted output" do
      assert RectangleRoom.format_output(3, 3) ==
        "You entered dimensions of 3 feet by 3 feet.\nThe area is\n9 square feet\n0.8361273600000001 square meters\n"
    end
  end
end
