defmodule AccountComponentTest do
  use ExUnit.Case
  doctest AccountComponent

  test "greets the world" do
    assert AccountComponent.hello() == :world
  end
end
