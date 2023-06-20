defmodule IncludedAppTwo do
  @moduledoc """
  Documentation for `IncludedAppTwo`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> IncludedAppTwo.hello()
      :world

  """
  def hello do
    :world
  end

  def geoip(ip) do
    IncludedAppOne.geoip(ip)
  end
end
