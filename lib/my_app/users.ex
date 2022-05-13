defmodule MyApp.User do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "users" do
    field(:first_name, :string)
    field(:age, :integer)
  end
end
