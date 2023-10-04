local M = {}  -- Mという名前のローカルテーブルを作成

-- Treesitter の設定
M.treesitter = {
  ensure_installed = {  -- インストールする言語パーサー
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "markdown",
    "markdown_inline",
  },
  indent = {  -- インデントの設定
    enable = true,  -- インデントを有効にする
    -- disable = {  -- インデントを無効にする言語（コメントアウトされている）
    --   "python"
    -- },
  },
}

-- Mason の設定
M.mason = {
  ensure_installed = {  -- インストールするLSPサーバーとツール
    -- Lua 関連
    "lua-language-server",
    "stylua",

    -- Web開発関連
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "tailwindcss-language-server",

    -- その他
    "yaml-language-server",
    "jsonlint",
  },
}

-- NvimTree での Git サポート
M.nvimtree = {
  git = {
    enable = true,  -- Git サポートを有効にする
  },

  renderer = {
    highlight_git = true,  -- Git ハイライトを有効にする
    icons = {
      show = {
        git = true,  -- Git アイコンを表示する
      },
    },
  },
}

return M  -- Mテーブルを返す
