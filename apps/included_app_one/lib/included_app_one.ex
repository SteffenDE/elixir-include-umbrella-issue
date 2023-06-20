defmodule IncludedAppOne do
  @moduledoc """
  Documentation for `IncludedAppOne`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> IncludedAppOne.hello()
      :world

  """
  def hello do
    :world
  end

  def geoip(ip) do
    Geolix.lookup(ip, where: :city, as: :raw)
  end
end
