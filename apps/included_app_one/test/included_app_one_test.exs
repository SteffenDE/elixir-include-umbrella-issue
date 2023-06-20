defmodule IncludedAppOneTest do
  use ExUnit.Case
  doctest IncludedAppOne

  test "greets the world" do
    assert IncludedAppOne.hello() == :world
  end
end
