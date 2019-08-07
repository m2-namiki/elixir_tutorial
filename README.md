# ElixirTutorial

## Overview

Elixir + Cowboyで簡単なWebアプリケーションを作成するためのプロジェクトです。

[ロマサガRS における Elixir サーバー開発実践](https://speakerdeck.com/elixirfest/romasakars-niokeru-elixir-sahakai-fa-shi-jian-sheng-chan-xing-woshang-ketekemufalsemian-bai-sanizhu-li)を参考にしています。

## Futures

* クライアントからのJSONリクエストを受け取ります
* 受け取ったJSONリクエストをDBに登録します
* 登録に成功した場合、その旨のJSONレスポンスを返却します
  * ステータス及び登録順
* 登録に失敗した場合、その旨のJSONレスポンスを返却します
  * ステータス及びエラーメッセージ

## Libraries

* plug_cowboy
* dialyxir
* jason
  * JSONパーサ
* yacto
  * [Ecto](https://elixirschool.com/ja/lessons/ecto/basics/)のサポートライブラリ
* simple_schema
  * JSONの検証と各データ構造への設定を行うライブラリ

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixir_tutorial` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:elixir_tutorial, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/elixir_tutorial](https://hexdocs.pm/elixir_tutorial).

