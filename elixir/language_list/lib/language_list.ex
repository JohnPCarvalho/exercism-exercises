defmodule LanguageList do
  def new(), do: []
  def add(list, language), do: list ++ language
  def remove(list), do: tl(list)
  def first(list), do: hd(list)
  def count(list), do: length(list)
  def functional_list?(list), do: if("Elixir" in list, do: true)
end
