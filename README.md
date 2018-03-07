# InterpretLoggerCall

A bug reproduction repo

## Bug description

Logger calls (such as `Logger.info`) that take an anonymous function that contains a string that performs interpolation
cannot be debugged using `:debugger`, IntelliJ Elixir or the Elixir Language Server that all use the `:int` OTP module
to interpret modules to perform line-based debugging.

Logger calls containing interpolation raise an `ArgumentError` when the module is interpreted.

## Bug reproduction

### Without interpretation

No bug when code is not interpreted

```
mix test
```

outputs

```
..
22:22:40.708 [info]  1
.
22:22:40.708 [info]  1
.

Finished in 0.02 seconds
4 tests, 0 failures
```

### With interpretation

Bug when code is interpreted

```
INT=1 mix test
```

outputs


```
..
22:22:47.931 [info]  1


  1) test log_interpolation/0 (InterpretLoggerCallTest)
     test/interpret_logger_call_test.exs:18
     ** (ArgumentError) argument error
     stacktrace:
       (interpret_logger_call) Elixir.InterpretLoggerCall.erl:17: anonymous fn/4 in InterpretLoggerCall.log_interpolation/0
       (interpret_logger_call) Elixir.InterpretLoggerCall.erl:17: InterpretLoggerCall.log_interpolation/0

.

Finished in 0.05 seconds
4 tests, 1 failure
```
