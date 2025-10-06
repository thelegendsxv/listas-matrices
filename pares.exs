defmodule Pares do
  def main do
    [1, 40, 57, 87, 51, 67, 78, 80, 16, 10]
    |> contar_pares()
    |> entonces(&"Cantidad de números pares: #{&1}")
    |> Util.mostrar_mensaje()
  end

  def contar_pares(lista), do: contar_pares(lista, 0)

  def contar_pares([], acc), do: acc

  def contar_pares([elem | resto], acc) do
    if es_par?(elem) do
      contar_pares(resto, acc + 1)
    else
      contar_pares(resto, acc)
    end
  end

  def es_par?(x) when rem(x, 2) == 0, do: true
  def es_par?(_), do: false

  defp entonces(valor, funcion), do: funcion.(valor)
end

Pares.main()
