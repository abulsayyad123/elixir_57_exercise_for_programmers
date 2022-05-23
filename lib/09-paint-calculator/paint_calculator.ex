defmodule PaintCalculator do
  @gallon_capacity 350

  # Constructor
  def get_number_of_gallons do
    with {length, _} <- IO.gets("What is the length of the room?") |> Integer.parse,
        {width, _} <- IO.gets("What is the width of the room?") |> Integer.parse
    do
      format_output(length, width)
    else
      :error ->
        "Please pass correct input"
    end
  end

  # Converter
  def format_output(length, width) do
    area = area_of_room(length, width)
    number_of_gallons = gallons_required?(area)

    """
    You will need to purchase #{number_of_gallons} gallons of
    paint to cover #{area} square feet.
    """
  end

  # Reducers
  def area_of_room(length, width) when is_integer(length) and is_integer(width) do
    length * width
  end

  def area_of_room(_length, _width), do: "Please pass correct input"
  def area_of_room(_length), do: "Please pass correct input"

  def gallons_required?(area) when is_integer(area) do
    (area/@gallon_capacity) |> Kernel.ceil
  end
  def gallons_required?(), do: "Please pass correct input"
end
