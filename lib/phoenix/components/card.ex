defmodule Phoenix.Components.Card do
  use Phoenix.Component

  attr :class, :string, default: nil
  attr :rest, :global
  slot :inner_block

  def card(assigns) do
    ~H"""
    <div
      data-slot="card"
      class={[
        "bg-card text-card-foreground flex flex-col gap-6 rounded-xl border py-6 shadow-sm",
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :class, :string, default: nil
  attr :rest, :global
  slot :inner_block

  def card_header(assigns) do
    ~H"""
    <div
      data-slot="card-header"
      class={[
        "@container/card-header grid auto-rows-min grid-rows-[auto_auto] items-start gap-2 px-6 has-data-[slot=card-action]:grid-cols-[1fr_auto] [.border-b]:pb-6",
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :class, :string, default: nil
  attr :rest, :global
  slot :inner_block

  def card_title(assigns) do
    ~H"""
    <div
      data-slot="card-title"
      class={["leading-none font-semibold", @class]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :class, :string, default: nil
  attr :rest, :global
  slot :inner_block

  def card_description(assigns) do
    ~H"""
    <div
      data-slot="card-description"
      class={["text-muted-foreground text-sm", @class]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :class, :string, default: nil
  attr :rest, :global
  slot :inner_block

  def card_action(assigns) do
    ~H"""
    <div
      data-slot="card-action"
      class={["col-start-2 row-span-2 row-start-1 self-start justify-self-end", @class]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :class, :string, default: nil
  attr :rest, :global
  slot :inner_block

  def card_content(assigns) do
    ~H"""
    <div
      data-slot="card-content"
      class={["px-6", @class]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :class, :string, default: nil
  attr :rest, :global
  slot :inner_block

  def card_footer(assigns) do
    ~H"""
    <div
      data-slot="card-footer"
      class={["flex items-center px-6 [.border-t]:pt-6", @class]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </div>
    """
  end
end
