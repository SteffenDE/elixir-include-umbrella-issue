defmodule IncludedAppTwoTest do
  use ExUnit.Case
  doctest IncludedAppTwo

  test "greets the world" do
    assert IncludedAppTwo.hello() == :world
  end
end
