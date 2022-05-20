defmodule SayingHello do

  def say_hello do
    IO.gets("What is your name?")
    |> String.replace("\n", "")
    |> generate_greet
  end

  def generate_greet(name) do
    "Hello, #{name}, nice to meet you!"
  end
end
