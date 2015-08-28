defmodule CardPlayers.CardTest do
  use CardPlayers.ModelCase

  alias CardPlayers.Card

  @valid_attrs %{image_number: 42, left_attribute: "some content", left_value: 42, quote: "some content", right_attribute: "some content", right_value: 42, title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Card.changeset(%Card{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Card.changeset(%Card{}, @invalid_attrs)
    refute changeset.valid?
  end
end
