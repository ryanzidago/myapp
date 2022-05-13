defmodule MyApp do
  import Ecto.Query

  alias MyApp.Repo
  alias MyApp.User

  @id Ecto.UUID.generate()
  @first_name "Jean"
  @age 30

  # this function crashes the calling process when it is used
  # unless `@id` is preceded with the `^` operator
  def fetch_user_by_id do
    from(u in User, where: u.id == @id)
    |> Repo.one()
  end

  # this function never crashes the calling process
  def fetch_user_by_first_name do
    from(u in User, where: u.first_name == @first_name)
    |> Repo.one()
  end

  # this function never crashes the calling process
  def fetch_user_by_age do
    from(u in User, where: u.age == @age)
    |> Repo.one()
  end
end
