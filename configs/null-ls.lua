-- null-ls モジュールをインポート
local null_ls = require "null-ls"

-- null-ls のビルトイン関数を b に格納
local b = null_ls.builtins

-- 使用するソース（フォーマッターやリンター）をテーブルに格納
local sources = {

  -- Web開発関連
  b.formatting.deno_fmt,  -- ts/js ファイル用に deno を選択（高速なため）
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },  -- prettier はこれらのファイルタイプでのみ動作

  -- Lua
  b.formatting.stylua,  -- Lua のフォーマッターとして stylua を使用
}

-- null-ls の設定
null_ls.setup {
  debug = true,  -- デバッグモードを有効にする
  sources = sources,  -- 上で定義したソースを使用
}
