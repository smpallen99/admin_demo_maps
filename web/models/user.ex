defmodule Admin2.User do
  use Admin2.Web, :model
  require Logger

  schema "users" do
    field :name, :string
    field :nicknames, {:array, :string}
    field :tokens, {:array, :integer}
    field :addresses, {:array, :map}
    field :stats, :map

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :nicknames, :tokens, :addresses, :stats])
    |> validate_required([:name])
    |> validate_length(:name, min: 3)
  end

end
