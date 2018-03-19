defmodule <%= inspect context.token_purpose.module %> do
  @behaviour Ecto.Type

  @values [:any, :recovery]

  def type, do: :string

  for value <- @values, atom = value, string = Atom.to_string(value) do
    def cast(unquote(atom)), do: {:ok, unquote(atom)}
    def cast(unquote(string)), do: {:ok, unquote(atom)}
    def load(unquote(string)), do: {:ok, unquote(atom)}
    def dump(unquote(string)), do: {:ok, unquote(string)}
    def dump(unquote(atom)), do: {:ok, unquote(string)}
  end

  def cast(_), do: :error
  def load(_), do: :error
  def dump(_), do: :error
end
