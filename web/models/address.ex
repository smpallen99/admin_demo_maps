defmodule Admin2.Address do
  use Admin2.Web, :model

  schema "address" do
    field :street, :string
    field :city, :string
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:street, :city])
    |> validate_required([:street, :city])
    |> validate_length(:street, min: 5)
  end
end
