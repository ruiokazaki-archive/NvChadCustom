-- "plugins.configs.lspconfig" モジュールから on_attach と capabilities をインポート
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

-- lspconfig モジュールをインポート
local lspconfig = require "lspconfig"

-- デフォルトの設定を使用するLSPサーバーをテーブルに格納
local servers = { "html", "cssls", "tsserver", "clangd" }

-- 各LSPサーバーに対して設定を適用
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,  -- サーバーがアタッチしたときの動作
    capabilities = capabilities,  -- サーバーの機能
  }
end

-- 他のLSPサーバー（この場合はpyright）に対して独自の設定を適用
-- lspconfig.pyright.setup { blabla}
