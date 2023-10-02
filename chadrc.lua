---@type ChadrcConfig
local M = {}  -- Mという名前のローカルテーブルを作成

-- "custom.highlights" モジュールをインポート
local highlights = require "custom.highlights"

-- UI（ユーザーインターフェース）に関する設定
M.ui = {
  theme = "chadracula",  -- 使用するテーマを "chadracula" に設定
  theme_toggle = { "chadracula", "one_light" },  -- テーマを切り替える際の選択肢

  hl_override = highlights.override,  -- 既存のハイライト設定を上書き
  hl_add = highlights.add,  -- 新しいハイライト設定を追加
}

-- プラグインに関する設定を "custom.plugins" から読み込む
M.plugins = "custom.plugins"

-- キーマッピングに関する設定を "custom.mappings" から読み込む
-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M  -- Mテーブルを返す。これにより、このテーブルは他のLuaファイルからもアクセスできる
