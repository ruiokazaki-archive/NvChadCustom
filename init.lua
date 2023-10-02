-- vim.api.nvim_create_autocmd関数をautocmdというローカル変数に割り当てる
-- local autocmd = vim.api.nvim_create_autocmd

-- Neovimウィンドウがリサイズされたときにペイン（分割ウィンドウ）も自動的にリサイズする
-- Auto resize panes when resizing nvim window

-- "VimResized"イベントが発生したときに実行されるautocommandを設定
-- autocmd("VimResized", {
--   pattern = "*",  -- すべてのバッファに適用
--   command = "tabdo wincmd =",  -- すべてのタブでウィンドウのサイズを均等にする
-- })
