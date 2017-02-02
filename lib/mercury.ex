defmodule Mercury do
  @moduledoc """
    A simple wrapper for the [Mercury Web Parser API](https://mercury.postlight.com/web-parser/),
    powered by HTTPoison.

    The Mercury Parser extracts the bits that humans care about from any URL you give it.
    That includes article content, titles, authors, published dates, excerpts, lead images, and more.

    To use, just run:

    ```
    {:ok, response} = Mercury.parse(url)

		# -- OR --

    %{body: body} = Mercury.parse!(url)
    ```
  """

  use HTTPoison.Base

  @base_url "https://mercury.postlight.com/parser"

  @doc """
  iex> {:ok, response} = Mercury.parse("https://trackchanges.postlight.com/building-awesome-cms-f034344d8ed")
  """
  def parse(url) do
    get(url)
  end

  @doc """
  iex> %{body: body} = Mercury.parse("https://trackchanges.postlight.com/building-awesome-cms-f034344d8ed")
  """
  def parse!(url) do
    get(url)
  end

  def process_url(url) do
    params = %{ url: url }
    @base_url <> "?" <> URI.encode_query(params)
  end

  defp process_request_headers(headers), do: headers ++ ["x-api-key": api_key]

  defp process_response_body(body) do
    body
    |> Poison.decode!
  end

  defp api_key do
    Application.get_env(:mercury, :api_key)
  end

end
