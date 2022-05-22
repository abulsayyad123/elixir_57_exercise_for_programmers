defmodule PrintingQuotes do

  def get_author, do: IO.gets("Who said it?") |> String.replace("\n", "")
  def get_quotes, do: IO.gets("What is the quote?") |> String.replace("\n", "")
  def print_quotes do
    quotes = get_quotes()
    author = get_author()
    ~s(#{author} says, #{quotes})
  end
end
