defmodule InstalacaoSolar.Analises.Router do
  use AshJsonApi.Api.Router,
    api: InstalacaoSolar.Analise,
    registry: InstalacaoSolar.Analises.Registry
end
