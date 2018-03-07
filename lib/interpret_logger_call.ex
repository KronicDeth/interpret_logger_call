defmodule InterpretLoggerCall do
  require Logger

  def fn_interpolation do
    (fn -> a = 1; "#{a}" end).()

    :ok
  end

  def fn_to_string do
    (fn -> a = 1; to_string(a) end).()

    :ok
  end

  def log_interpolation do
    Logger.info(fn -> a = 1; "#{a}" end)

    :ok
  end

  def log_to_string do
    Logger.info(fn -> a = 1; to_string(a) end)

    :ok
  end
end
