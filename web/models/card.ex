defmodule CardPlayers.Card do
  use CardPlayers.Web, :model

  schema "cards" do
    field :image_number, :integer
    field :title, :string
    field :left_attribute, :string
    field :left_value, :integer
    field :right_attribute, :string
    field :right_value, :integer
    field :quote, :string

    timestamps
  end

  @required_fields ~w(image_number title left_attribute left_value right_attribute right_value quote)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
