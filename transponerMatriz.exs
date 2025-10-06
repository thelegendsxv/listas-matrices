defmodule MatrizTranspuesta do
  def main do
    matriz = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]

    IO.puts("Matriz original:")
    mostrar_matriz(matriz)

    transpuesta = convertir(matriz)

    IO.puts("\nMatriz traspuesta:")
    mostrar_matriz(transpuesta)
  end

  # función principal que coordina la trasposición
  def convertir(matriz) do
    columnas = length(Enum.at(matriz, 0))
    construir_columnas(matriz, columnas, 0, [])
  end


  defp construir_columnas(_matriz, total, actual, nueva) when actual == total, do: nueva

  defp construir_columnas(matriz, total, actual, nueva) do
    columna = for fila <- matriz, do: Enum.at(fila, actual)
    construir_columnas(matriz, total, actual + 1, nueva ++ [columna])
  end

  # imprime una matriz fila por fila (sin interpretarla como caracteres)
  defp mostrar_matriz(matriz) do
    Enum.each(matriz, fn fila ->
      IO.inspect(fila, charlists: :as_lists)
    end)
  end
end

MatrizTranspuesta.main()
