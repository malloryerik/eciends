defmodule Eciends.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      Eciends.Repo
      # Starts a worker by calling: Friends.Worker.start_link(arg)
      # {Friends.Worker, arg},
    ]

    opts = [strategy: :one_for_one, name: Eciends.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
