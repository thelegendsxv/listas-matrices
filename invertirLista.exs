defmodule InvertirLista do
  def main do
    [1, 2, 3, 4, 5]
    |> invertir()
    |> entonces(&"Lista invertida: #{inspect(&1)}")
    |> Util.mostrar_mensaje()
  end

  def invertir(lista), do: invertir(lista, [])

  def invertir([], acc), do: acc

  def invertir([cabeza | resto], acc) do
    invertir(resto, [cabeza | acc])
  end

  defp entonces(valor, funcion), do: funcion.(valor)
end

InvertirLista.main()
