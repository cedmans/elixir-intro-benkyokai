defmodule Feeder do
  def feed(animals) when is_list(animals) do
    Enum.each(animals, &feed/1)
  end

  def feed(animal) do
    IO.puts("\"Yum!\" says #{inspect(animal)}")
  end
end