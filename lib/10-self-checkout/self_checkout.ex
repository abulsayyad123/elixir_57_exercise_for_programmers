defmodule SelfCheckout do
  alias SelfCheckout.Item

  @tax_rate 5.5

  def get_items() do
    items = Enum.map(1..3, &get_inputs(&1))
    items
  end

  def get_subtotal(items) do
    items
    |> Enum.map(fn item -> item |> Item.price end)
    |> Enum.sum
  end

  def get_tax_value(subtotal) do
    (@tax_rate/100) * subtotal
  end

  def format_output(items) do
    subtotal = items |> get_subtotal
    tax = get_tax_value(subtotal)
    total = subtotal + tax
    """
    Subtotal: $#{subtotal}
    Tax: $#{tax}
    Total: $#{total}
    """
  end

  # Private
  defp get_inputs(item_number) do
    with {price, _} <- IO.gets("Enter the price of item #{item_number}:") |> Integer.parse,
        {quantity, _} <- IO.gets("Enter the price of item #{item_number}:") |> Integer.parse
    do
      Item.new(price: price, quantity: quantity)
    else
      :error ->
        "Please pass correct input"
    end
  end
end
