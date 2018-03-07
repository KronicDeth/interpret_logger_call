defmodule InterpretLoggerCallTest do
  use ExUnit.Case

  setup do
    System.get_env("INT") && :int.ni(InterpretLoggerCall)

    :ok
  end

  test "fn_interpolation/0" do
    assert InterpretLoggerCall.fn_interpolation() == :ok
  end

  test "fn_to_string/0" do
    assert InterpretLoggerCall.fn_to_string() == :ok
  end

  test "log_interpolation/0" do
    assert InterpretLoggerCall.log_interpolation() == :ok
  end

  test "log_to_string/0" do
    assert InterpretLoggerCall.log_to_string() == :ok
  end
end
