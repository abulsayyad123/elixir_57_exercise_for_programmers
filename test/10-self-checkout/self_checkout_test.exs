defmodule SelfCheckoutTest do
  use ExUnit.Case
  doctest Elixir57ExerciseForProgrammers

  alias SelfCheckout.Item

  # Create a simple self-checkout system. Prompt for the prices
  # and quantities of three items. Calculate the subtotal of the
  # items. Then calculate the tax using a tax rate of 5.5%. Print
  # out the line items with the quantity and total, and then print
  # out the subtotal, tax amount, and total.

  # Example Output
  # Enter the price of item 1: 25
  # Enter the quantity of item 1: 2
  # Enter the price of item 2: 10
  # Enter the quantity of item 2: 1
  # Enter the price of item 3: 4
  # Enter the quantity of item 3: 1
  # Subtotal: $64.00
  # Tax: $3.52
  # Total: $67.52

  # Constraints
  # • Keep the input, processing, and output parts of your
  # program separate. Collect the input, then do the math
  # operations and string building, and then print out the
  # output.
  # • Be sure you explicitly convert input to numerical data
  # before doing any calculations.

  describe "get_subtotal" do
    test "it returns subtotal for list of items passed" do
      items = [
        %Item{price: 25, quantity: 2},
        %Item{price: 10, quantity: 1},
        %Item{price: 4, quantity: 1}
      ]
      assert SelfCheckout.get_subtotal(items) == 64
    end

    test "it returns subtotal 0 for empty items list" do
      items = []
      assert SelfCheckout.get_subtotal(items) == 0
    end
  end

  describe "get_tax_value" do
    test "it returns tax value of passed subtotal" do
      assert SelfCheckout.get_tax_value(64.00) == 3.52
    end

    test "it returns tax value tax value 0 for 0 subtotal" do
      assert SelfCheckout.get_tax_value(0) == 0
    end
  end

  describe "format_output" do
    test "it returns formatted input for passed items" do
      items = [
        %Item{price: 25, quantity: 2},
        %Item{price: 10, quantity: 1},
        %Item{price: 4, quantity: 1}
      ]
      assert SelfCheckout.format_output(items) == "Subtotal: $64\nTax: $3.52\nTotal: $67.52\n"
    end
  end
end
