defmodule Bob do
  def hey(input) do
    cond do
        String.trim(input) == "" ->
          "Fine. Be that way!"
        String.last(input) == "?" ->
          "Sure."
        String.upcase(input) == input
        && String.upcase(input) != String.downcase(input) ->
          "Whoa, chill out!"
        true ->
          "Whatever."
    end
  end
end
