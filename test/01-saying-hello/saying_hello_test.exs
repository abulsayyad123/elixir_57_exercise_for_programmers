defmodule SayingHelloTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Elixir57ExerciseForProgrammers

  # The “Hello, World” program is the first program you learn
  # to write in many languages, but it doesn’t involve any input.
  # So create a program that prompts for your name and prints
  # a greeting using your name.

  # Example Output
  # What is your name? Brian
  # Hello, Brian, nice to meet you!

  describe "say_hello" do
    test "it prompt user to enter name" do
      assert capture_io("Brian", fn ->
        SayingHello.say_hello
      end) =~ "What is your name?"
    end
  end

  describe "generate_greet/1" do
    test "it returns greetings as per passed name" do
      assert SayingHello.generate_greet("Brian") == "Hello, Brian, nice to meet you!"
    end
  end
end
