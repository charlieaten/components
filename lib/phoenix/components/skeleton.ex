defmodule Phoenix.Components.Skeleton do
  use Phoenix.Component

  attr :class, :string, default: nil
  attr :rest, :global
  slot :inner_block

  def skeleton(assigns) do
    ~H"""
    <div data-slot="skeleton" class={["bg-accent animate-pulse rounded-md", @class]} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end
end
