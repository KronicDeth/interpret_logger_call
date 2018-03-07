defmodule InterpretLoggerCallTest do
  use ExUnit.Case
  doctest InterpretLoggerCall

  test "greets the world" do
    assert InterpretLoggerCall.hello() == :world
  end
end
