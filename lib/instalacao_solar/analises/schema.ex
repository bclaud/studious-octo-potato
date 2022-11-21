defmodule InstalacaoSolar.Analises.Schema do
  use Absinthe.Schema

  @apis [{InstalacaoSolar.Analise, InstalacaoSolar.Analises.Registry}]
  
  use AshGraphql, apis: [InstalacaoSolar.Analise]

  query do
  end

  def context(ctx) do
    AshGraphql.add_context(ctx, @apis)
  end

  def plugins() do
    [Absinthe.Middleware.Dataloader | Absinthe.Plugin.defaults()]
  end
end
