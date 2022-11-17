defmodule InstalacaoSolar.Analise do
  use Ash.Api

  resources do
    # This defines the set of resources that can be used with this api
    registry InstalacaoSolar.Analises.Registry
  end
end
