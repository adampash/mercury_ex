# Mercury

A simple wrapper for the [Mercury Web Parser API](https://mercury.postlight.com/web-parser/),
powered by HTTPoison.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `mercury` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:mercury, "~> 0.1.0"}]
    end
    ```

  2. Add your Mercury API key to your `config.exs`

    ```elixir
    config :mercury, :api_key
    ```

