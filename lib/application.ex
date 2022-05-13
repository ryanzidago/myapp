defmodule MyApp.Application do
  use Application

  def start(_, _) do
    children = [
      MyApp.Repo
    ]

    opts = [strategy: :one_for_one, name: Backend.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
