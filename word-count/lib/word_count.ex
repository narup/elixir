defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> String.downcase()
    |> String.split(" ")
    |> count_map()
  end

  def count_map(sentences) do
    Enum.reduce(sentences, %{}, &increment_map/2)
  end

  defp increment_map(word, map) do
    Map.update(map, word, 1, &(&1 + 1))
  end

end
