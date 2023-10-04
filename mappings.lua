---@type MappingsTable
local M = {} -- Mという名前のローカルテーブルを作成

-- 一般的なキーマッピング設定
M.general = {
  n = { -- ノーマルモードでのキーマッピング
    [";"] = { ":", "enter command mode", opts = { nowait = true } }, -- ";" を押すとコマンドモードに入る
  },
  v = { -- ビジュアルモードでのキーマッピング
    [">"] = { ">gv", "indent" }, -- ">" を押すとインデントを行い、ビジュアル選択を維持する
  },
}

-- more keybinds!

return M
