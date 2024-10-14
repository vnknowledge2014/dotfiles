local M = {}

M.ui = {
  theme = "onedark",
}

M.plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Lua
        "lua-language-server",
        "stylua",

        -- Web development
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "prettier",
        "emmet-ls",

        -- Shell
        "shfmt",
        "shellcheck",

        -- JavaScript/TypeScript
        "eslint_d",

        -- Python
        "pyright",
        "black",
        "isort",

        -- C/C++
        "clangd",
        "clang-format",

        -- Rust
        "rust-analyzer",

        -- Go
        "gopls",

        -- Java
        "jdtls",

        -- Ruby
        "solargraph",

        -- Elixir
        "elixir-ls",

        -- Haskell
        "hls",

        -- Kotlin
        "kotlin-language-server",

        -- Scala
        "metals",

        -- Dart/Flutter
        "dart-language-server",

        -- Gleam
        "gleam",

        -- Zig
        "zls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python", "javascript", "typescript", "lua", "rust", "go", "ruby", "elixir", "haskell", "kotlin", "scala", "dart", "zig"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require('rust-tools').setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "saecki/crates.nvim",
    ft = {"rust", "toml"},
    config = function(_, opts)
      local crates = require('crates')
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "dart-lang/dart-vim-plugin",
    ft = "dart",
  },
  {
    "akinsho/flutter-tools.nvim",
    ft = "dart",
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim',
    },
    config = function()
      require("flutter-tools").setup{}
    end,
  },
}

return M

