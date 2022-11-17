defmodule InstalacaoSolar.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      InstalacaoSolarWeb.Telemetry,
      # Start the Ecto repository
      InstalacaoSolar.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: InstalacaoSolar.PubSub},
      # Start Finch
      {Finch, name: InstalacaoSolar.Finch},
      # Start the Endpoint (http/https)
      InstalacaoSolarWeb.Endpoint
      # Start a worker by calling: InstalacaoSolar.Worker.start_link(arg)
      # {InstalacaoSolar.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: InstalacaoSolar.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    InstalacaoSolarWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
