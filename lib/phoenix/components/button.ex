defmodule Phoenix.Components.Button do
  use Phoenix.Component

  slot :inner_block

  def button(assigns) do
    ~H"""
    {render_slot(@inner_block)}
    """
  end
end
