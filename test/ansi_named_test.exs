defmodule AnsiNamedTest do
  use ExUnit.Case
  doctest AnsiNamed

  test "greets the world" do
    assert AnsiNamed.hello() == :world
  end
end
