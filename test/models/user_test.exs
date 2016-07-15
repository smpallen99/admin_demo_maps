defmodule Admin2.UserTest do
  use Admin2.ModelCase

  alias Admin2.User

  @valid_attrs %{name: "some content", nicknames: []}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
