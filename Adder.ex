defmodule Adder do
  def add(a, b) do
    a + b
  end
end

defmodule SafeAdder do
  def add(a, b) when is_number(a) and is_number(b), do: a + b
  def add(a, b) when is_binary(a) and is_binary(b), do: a <> b
end
