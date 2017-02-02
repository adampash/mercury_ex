# Mercury

A simple wrapper for the [Mercury Web Parser API](https://mercury.postlight.com/web-parser/),
powered by HTTPoison.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `mercury` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [
				{:mercury, "~> 0.1.1"},
			]
    end
    ```

  2. Add your Mercury API key to your `config.exs`

    ```elixir
    config :mercury, api_key: "<your_mercury_api_key>"
    ```

If you don't already have one, you can sign up for a Mercury Parser API key [here](https://mercury.postlight.com/web-parser/).
