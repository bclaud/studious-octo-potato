defmodule InstalacaoSolar.Playground do
  alias InstalacaoSolar.Analise, as: Api
  alias InstalacaoSolar.Analises
  alias InstalacaoSolar.Analises.Instalacao
  require Ash.Query

  # exemplos para usar data_layer
  def generate_data(qtd \\ 5) do
    for i <- 0..qtd do
      instalacao =
        Instalacao
        |> Ash.Changeset.for_create(:open, %{nome_inversor: "inversor n #{i}"})
        |> Api.create!()

      if rem(i, 2) == 0 do
        instalacao
        |> Ash.Changeset.for_update(:finish)
        |> Api.update!()
      else
        instalacao
      end
    end
  end

  def evaluate(id, score) do
    Instalacao
    |> Api.get!(id)
    |> Ash.Changeset.for_update(:evaluate, score)
    |> Api.update!
  end

end
