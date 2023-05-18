defmodule Shop.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :name, :string
      add :price, :integer
      add :price_exclude_tax, :float
      add :tax, :integer
      add :tax_rate, :float

      timestamps()
    end
  end
end
