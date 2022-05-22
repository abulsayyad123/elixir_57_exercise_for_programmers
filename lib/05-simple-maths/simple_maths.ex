defmodule SimpleMaths do

  def get_numbers() do
    first_num = IO.gets("What is the first number?") |> format_input()
    second_num = IO.gets("What is the second number?") |> format_input()
    format_output(first_num, second_num)
  end
  def sum(first_num, second_num), do: first_num + second_num
  def subtract(first_num, second_num), do: first_num - second_num
  def multiply(first_num, second_num), do: first_num * second_num
  def divide(first_num, second_num), do: first_num / second_num

  ## Private

  defp format_output(first_num, second_num) do
    """
    #{first_num} + #{second_num} = #{sum(first_num, second_num)}
    #{first_num} - #{second_num} = #{subtract(first_num, second_num)}
    #{first_num} * #{second_num} = #{multiply(first_num, second_num)}
    #{first_num} / #{second_num} = #{divide(first_num, second_num)}
    """
  end

  defp format_input(input) do
    input |> String.replace("\n", "") |> String.to_integer
  end
end
