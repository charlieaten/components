defmodule Phoenix.Components.Badge do
  use Phoenix.Component

  @variants ["default", "secondary", "destructive", "outline"]

  attr :variant, :string, values: @variants, default: "default"
  attr :class, :string, default: nil
  attr :rest, :global
  slot :inner_block

  def badge(assigns) do
    # TODO: Implement :render prop for asChild
    ~H"""
    <span
      data-slot="badge"
      class={[
        "inline-flex items-center justify-center rounded-full border px-2 py-0.5 text-xs font-medium w-fit whitespace-nowrap shrink-0 [&>svg]:size-3 gap-1 [&>svg]:pointer-events-none focus-visible:border-ring focus-visible:ring-ring/50 focus-visible:ring-[3px] aria-invalid:ring-destructive/20 dark:aria-invalid:ring-destructive/40 aria-invalid:border-destructive transition-[color,box-shadow] overflow-hidden",
        case @variant do
          "default" ->
            "border-transparent bg-primary text-primary-foreground [a&]:hover:bg-primary/90"

          "secondary" ->
            "border-transparent bg-secondary text-secondary-foreground [a&]:hover:bg-secondary/90"

          "destructive" ->
            "border-transparent bg-destructive text-white [a&]:hover:bg-destructive/90 focus-visible:ring-destructive/20 dark:focus-visible:ring-destructive/40 dark:bg-destructive/60"

          "outline" ->
            "text-foreground [a&]:hover:bg-accent [a&]:hover:text-accent-foreground"
        end,
        @class
      ]}
      {@rest}
    >
      {render_slot(@inner_block)}
    </span>
    """
  end
end
