defmodule CardPlayers.Repo.Migrations.CreateCard do
  use Ecto.Migration

  def change do
    create table(:cards) do
      add :image_number, :integer
      add :title, :string
      add :left_attribute, :string
      add :left_value, :integer
      add :right_attribute, :string
      add :right_value, :integer
      add :quote, :string

      timestamps
    end
  end
end

