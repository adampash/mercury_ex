defmodule Mercury do
  use HTTPoison.Base

  @base_url "https://mercury.postlight.com/parser"

  def parse(url) do
    get!(url)
  end

  def process_url(url) do
    params = %{ url: url }
    @base_url <> "?" <> URI.encode_query(params)
  end

  defp process_request_headers(headers), do: headers ++ ["x-api-key": @api_key]

  defp process_response_body(body) do
    body
    |> Poison.decode!
  end

  def api_key do
    app = Mix.Project.config[:app]

    Application.get_env(app, :mercury_api_key)
  end

end
