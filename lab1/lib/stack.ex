defmodule StackItem do
  defstruct name: "", value: 0
end

defmodule Stack do

  def push(name, val, s\\[]) do
    { :ok, [%StackItem{name: name, value: val}] ++ s }
  end

  def pop([h]), do: { :ok, h, [] }
  def pop([h|tail]), do: pop(tail, [h])

  def pop([h|[]], acc), do: { :ok, h, acc }
  def pop([h|tail], acc), do: pop(tail, acc ++ [h])

  def depth(s), do: length s
end
