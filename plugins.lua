-- "custom.configs.overrides" モジュールをインポート
local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- プラグイン定義オプションを上書き

  {
    "neovim/nvim-lspconfig",  -- LSP (Language Server Protocol) 設定プラグイン
    dependencies = {
      -- フォーマットとリンティング
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"  -- カスタムのnull-ls設定を読み込む
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"  -- 一般的なLSP設定を読み込む
      require "custom.configs.lspconfig"  -- カスタムのLSP設定を読み込む
    end,  -- mason-lspconfigの設定を上書き
  },

  -- プラグイン設定を上書き
  {
    "williamboman/mason.nvim",
    opts = overrides.mason  -- masonプラグインのオプションを上書き
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,  -- treesitterプラグインのオプションを上書き
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,  -- nvim-treeプラグインのオプションを上書き
  },

  -- プラグインをインストール
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",  -- インサートモードに入ったときにロード
    config = function()
      require("better_escape").setup()  -- better-escapeプラグインをセットアップ
    end,
  },

  -- プラグインをロードしないように設定
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- すべてのNvChadプラグインはデフォルトで遅延ロードされる
  -- プラグインをロードするには、`ft`、`cmd`、`keys`、`event`、または`lazy = false`を設定する必要がある
  -- スタートアップ時にプラグインをロードする場合は、`lazy = false`をプラグイン仕様に追加
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins  -- pluginsテーブルを返す
