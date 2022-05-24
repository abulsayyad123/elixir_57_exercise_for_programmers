defmodule SelfCheckout.Item do
  defstruct price: 0, quantity: 1

  def new(options) do
    __struct__(options)
  end

  def price(item) do
    item.price * item.quantity
  end
end
