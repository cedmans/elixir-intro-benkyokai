defmodule KanjiParser do
  @kanji_utf8_range 0x4e00..0x9faf

  defp in_kanji_range?(charcode) do
    charcode in @kanji_utf8_range
  end

  defp charcode_to_character(charcode) do
    <<charcode :: utf8>>
  end

  @spec from_string(String.t()) :: [String.t()]
  def from_string(string) do
    string
    |> String.to_charlist()
    |> Enum.filter(&in_kanji_range?/1)
    |> Enum.map(&charcode_to_character/1)
  end
end