defmodule Shop.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :name, :string
    field :price, :integer
    field :price_exclude_tax, :float
    field :tax, :integer
    field :tax_rate, :float

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:name, :price, :price_exclude_tax, :tax, :tax_rate])
    |> validate_required([:name, :price, :price_exclude_tax, :tax, :tax_rate])
  end
end
