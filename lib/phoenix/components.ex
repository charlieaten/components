defmodule Phoenix.Components do
  defdelegate badge(assigns), to: Phoenix.Components.Badge
  defdelegate button(assigns), to: Phoenix.Components.Button
  defdelegate card(assigns), to: Phoenix.Components.Card
  defdelegate card_header(assigns), to: Phoenix.Components.Card
  defdelegate card_title(assigns), to: Phoenix.Components.Card
  defdelegate card_description(assigns), to: Phoenix.Components.Card
  defdelegate card_action(assigns), to: Phoenix.Components.Card
  defdelegate card_content(assigns), to: Phoenix.Components.Card
  defdelegate card_footer(assigns), to: Phoenix.Components.Card
  defdelegate input(assigns), to: Phoenix.Components.Input
  defdelegate skeleton(assigns), to: Phoenix.Components.Skeleton
  defdelegate table(assigns), to: Phoenix.Components.Table
  defdelegate table_header(assigns), to: Phoenix.Components.Table
  defdelegate table_body(assigns), to: Phoenix.Components.Table
  defdelegate table_footer(assigns), to: Phoenix.Components.Table
  defdelegate table_row(assigns), to: Phoenix.Components.Table
  defdelegate table_head(assigns), to: Phoenix.Components.Table
  defdelegate table_cell(assigns), to: Phoenix.Components.Table
  defdelegate table_caption(assigns), to: Phoenix.Components.Table

  def cn(classes), do: TwMerge.merge(classes)
end
