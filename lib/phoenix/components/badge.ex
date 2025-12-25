defmodule Phoenix.Components.Badge do
  use Phoenix.Component

  import CVA

  @config [
    variants: [
      variant: [
        default: "border-transparent bg-primary text-primary-foreground [a&]:hover:bg-primary/90",
        secondary:
          "border-transparent bg-secondary text-secondary-foreground [a&]:hover:bg-secondary/90",
        destructive:
          "border-transparent bg-destructive text-white [a&]:hover:bg-destructive/90 focus-visible:ring-destructive/20 dark:focus-visible:ring-destructive/40 dark:bg-destructive/60",
        outline: "text-foreground [a&]:hover:bg-accent [a&]:hover:text-accent-foreground"
      ]
    ],
    default_variants: [
      variant: :default
    ]
  ]

  attr :variant, :string, values: ~w(default secondary destructive outline)
  attr :class, :string, default: nil
  attr :rest, :global
  slot :render
  slot :inner_block

  def badge(assigns) do
    variant = Map.get(assigns, :variant, :default)

    class =
      "inline-flex items-center justify-center rounded-full border px-2 py-0.5 text-xs font-medium w-fit whitespace-nowrap shrink-0 [&>svg]:size-3 gap-1 [&>svg]:pointer-events-none focus-visible:border-ring focus-visible:ring-ring/50 focus-visible:ring-[3px] aria-invalid:ring-destructive/20 dark:aria-invalid:ring-destructive/40 aria-invalid:border-destructive transition-[color,box-shadow] overflow-hidden"
      |> cva(@config, variant: variant, class: assigns.class)
      |> TwMerge.merge()

    attrs = assigns.rest |> Map.merge(%{class: class})
    assigns = assign(assigns, attrs: attrs, variant: variant)

    ~H"""
    <%= if  Enum.count(@render || [])> 0 do %>
      {render_slot(@render, @attrs)}
    <% else %>
      <span data-slot="badge" data-variant={@variant} {@attrs}>
        {render_slot(@inner_block)}
      </span>
    <% end %>
    """
  end
end
