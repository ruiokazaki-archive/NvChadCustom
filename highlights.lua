-- ハイライトグループを見つけるには: "<cmd> Telescope highlights" を使用
-- 各ハイライトグループは、fg（前景色）、bg（背景色）、bold（太字）、italic（斜体）などの変数を持つテーブルを取ることができる
-- base30の変数名も色として使用できる

local M = {}  -- Mという名前のローカルテーブルを作成

-- 既存のハイライトグループ（この場合は「Comment」）を上書きする設定
---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,  -- コメントを斜体で表示
  },
}

-- 新しいハイライトグループ（この場合は「NvimTreeOpenedFolderName」）を追加する設定
---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },  -- 前景色を緑にし、太字で表示
}

return M  -- Mテーブルを返す。これにより、このテーブルは他のLuaファイルからもアクセスできる
