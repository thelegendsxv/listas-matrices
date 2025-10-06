defmodule SumaMatriz do
  def main do
    [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
    |> sumar_elementos()
    |> entonces(&"Suma total de la matriz: #{&1}")
    |> Util.mostrar_mensaje()
  end

  def sumar_elementos(matriz), do: sumar_elementos(matriz, 0)

  def sumar_elementos([], acc), do: acc

  def sumar_elementos([fila | resto_filas], acc) do
    suma_fila = sumar_fila(fila)
    sumar_elementos(resto_filas, acc + suma_fila)
  end

  defp sumar_fila(fila), do: sumar_fila(fila, 0)

  defp sumar_fila([], acc), do: acc

  defp sumar_fila([elem | resto], acc) do
    sumar_fila(resto, acc + elem)
  end

  defp entonces(valor, funcion), do: funcion.(valor)
end

SumaMatriz.main()
