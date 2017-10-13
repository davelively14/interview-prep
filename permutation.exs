defmodule Permutations do
  def check(str1, str2) do
    a = str1 |> String.graphemes
    b = str2 |> String.graphemes
    IO.inspect String.graphemes(str1)
  end
end

Permutations.check("john", "nohj")
