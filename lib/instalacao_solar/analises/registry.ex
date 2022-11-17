defmodule InstalacaoSolar.Analises.Registry do
  use Ash.Registry,
    extensions: [
      # This extension add helpful compile time validations
      Ash.Registry.ResourceValidations
    ]

  entries do
    entry InstalacaoSolar.Analises.Instalacao
  end
end
