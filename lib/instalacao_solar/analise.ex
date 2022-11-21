defmodule InstalacaoSolar.Analise do
  use Ash.Api, extensions: [AshJsonApi.Api, AshGraphql.Api]

  graphql do
    authorize? false
  end

  # json_api do
  #   router(InstalacaoSolar.Analises.Router)
  #   prefix "/json_api"
  #   serve_schema?(false)
  #   log_errors?(true)
  # end

  resources do
    # This defines the set of resources that can be used with this api
    registry InstalacaoSolar.Analises.Registry
  end
end
