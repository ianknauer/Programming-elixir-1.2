defmodule Mylist do
  def reduce([], value, _) do
    value
  end

  def reduce([head | tail], value, function) do
    reduce(tail, func.(head,value), func)
  end
end
