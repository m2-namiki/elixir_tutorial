# ElixirTutorial

## Overview

Elixir + Cowboyで簡単なWebアプリケーションを作成するためのプロジェクトです。

[ロマサガRS における Elixir サーバー開発実践](https://speakerdeck.com/elixirfest/romasakars-niokeru-elixir-sahakai-fa-shi-jian-sheng-chan-xing-woshang-ketekemufalsemian-bai-sanizhu-li?slide=6)のアプリケーション・インフラ構成を **かなり** 参考にしています。

## Functions

このアプリケーションでは、以下の2つの機能を提供します。

* 送信されたJSONリクエストの内容をDBに登録する
* 登録されているリクエストの件数を返却する
* クライアントからのJSONリクエストを受け取ります
  * できればJSON-RPCとしたい
* 指定されたJSONリクエストの内容をDBに登録する
  * 登録に成功した場合、その旨のJSONレスポンスを返却します
    * ステータス及び登録順
  * 登録に失敗した場合、その旨のJSONレスポンスを返却します
    * ステータス及びエラーメッセージ
* 登録されているリクエストの件数を返却する
  * ステータス及び登録件数

## Libraries

* [plug_cowboy](https://github.com/elixir-plug/plug_cowboy)
  * Cowboy向けのPlugアダプタ
* [dialyxir](https://github.com/jeremyjh/dialyxir)
  * 静的解析ツール
* [jason](https://github.com/michalmuskala/jason)
  * JSONパーサ
* [yacto](https://github.com/gumi/yacto)
  * [Ecto](https://elixirschool.com/ja/lessons/ecto/basics/)のサポートライブラリ
* [simple_schema](https://libraries.io/hex/simple_schema)
  * JSONの検証と各データ構造への設定を行うライブラリ


#### Original README

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

