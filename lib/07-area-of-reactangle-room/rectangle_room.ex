defmodule RectangleRoom do

  def area_of_reactangle() do
    with {length, _} <- IO.gets("What is the length of the room in feet? ") |> Integer.parse,
        {width, _} <- IO.gets("What is the width of the room in feet? ") |> Integer.parse
    do
      format_output(length, width)
    else
      :error ->
        "Please pass correct input"
    end
  end

  def format_output(length, width) when is_integer(length) and is_integer(width) do
    area_in_feets = area_of_reactangle_in_feets(length, width)
    area_in_meters = area_in_feets |> area_of_reactangle_in_meters

    """
    You entered dimensions of #{length} feet by #{width} feet.
    The area is
    #{area_in_feets} square feet
    #{area_in_meters} square meters
    """
  end

  def area_of_reactangle_in_feets(length, width) when is_integer(length) and is_integer(width) do
    length * width
  end

  def area_of_reactangle_in_feets(_length, _width), do: "Please pass correct input"
  def area_of_reactangle_in_feets(_length), do: "Please pass correct input"

  def area_of_reactangle_in_meters(area) when is_integer(area) do
    area * 0.09290304
  end

  def area_of_reactangle_in_meters(_area = ""), do: "Please pass correct input"
  def area_of_reactangle_in_meters(_area), do: "Please pass correct input"
  @spec area_of_reactangle_in_meters :: <<_::200>>
  def area_of_reactangle_in_meters(), do: "Please pass correct input"
end
