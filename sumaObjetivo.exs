defmodule SumaObjetivo do
  def main do
    lista = [1,2,3,4,5,6,7,8,9,10]
    objetivo = 10

    IO.puts("Lista: #{inspect(lista)}")
    IO.puts("Buscando combinaciones que sumen #{objetivo}...\n")

    resultado = buscar_todas(lista, objetivo)

    if resultado == [] do
      IO.puts("No se encontró ninguna posible combinación")
    else
      Enum.each(resultado, fn {a, b} ->
        IO.puts("La combinación es #{a} + #{b} = #{objetivo}")
      end)
    end
  end

  # Nueva función que devuelve TODAS las combinaciones
  def buscar_todas(lista, n), do: buscar_todas(lista, n, 0, 1, [])

  defp buscar_todas(lista, n, i, j, combinaciones) do
    cond do
      i >= length(lista) ->
        combinaciones

      j >= length(lista) ->
        buscar_todas(lista, n, i + 1, i + 2, combinaciones)

      true ->
        a = Enum.at(lista, i)
        b = Enum.at(lista, j)

        if a + b == n do
          buscar_todas(lista, n, i, j + 1, combinaciones ++ [{a, b}])
        else
          buscar_todas(lista, n, i, j + 1, combinaciones)
        end
    end
  end
end

SumaObjetivo.main()
