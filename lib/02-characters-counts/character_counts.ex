defmodule CharactersCount do

  def get_count do
    IO.gets("What is the input string?")
    |> get_char_count_message
  end

  def get_char_count_message(input_string) do
    count = input_string |> String.length
    "#{input_string} has #{count} characters."
  end
end
