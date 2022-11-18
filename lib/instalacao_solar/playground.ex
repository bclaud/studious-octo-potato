defmodule InstalacaoSolar.Playground do
  alias InstalacaoSolar.Analise
  alias InstalacaoSolar.Analises
  require Ash.Query

  # exemplos para usar data_layer
  def generate_data(qtd \\ 5) do
    for i <- 0..qtd do
      instalacao =
        Analises.Instalacao
        |> Ash.Changeset.for_create(:open, %{nome_inversor: "inversor n #{i}"})
        |> Analise.create!()

      if rem(i, 2) == 0 do
        instalacao
        |> Ash.Changeset.for_update(:finish)
        |> Analise.update!()
      else
        instalacao
      end
    end
  end
end
