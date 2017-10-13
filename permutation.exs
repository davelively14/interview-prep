defmodule Permutations do
  def equal(str1, str2) do
    a = str1 |> String.graphemes
    b = str2 |> String.graphemes

    IO.inspect compare(a, b)
  end

  def compare([], []), do: true
  def compare([], _), do: false
  def compare(_, []), do: false
  def compare([head | tail], series) do
    if remaining = test_against(head, series) do
      compare(tail, remaining)
    else
      false
    end
  end

  def test_against(subj, series), do: test_against(subj, series, [])
  def test_against(_, [], _), do: nil
  def test_against(subj, [head | tail], unused) do
    if subj == head do
      [unused | tail] |> List.flatten
    else
      test_against(subj, tail, [head | unused])
    end
  end
end

Permutations.equal("john", "nohj")
Permutations.equal("john", "ohj")
Permutations.equal("john", "ohjjn")
