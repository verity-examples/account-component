defmodule AccountComponentTest do
  use ExUnit.Case
  doctest AccountComponent

  test "greets the world" do
    args = Application.fetch_env!(:account_component, Postgrex)
    assert {:ok, _pid} = Postgrex.start_link(args)
    assert AccountComponent.hello() == :world
  end
end
