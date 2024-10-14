local null_ls = require "null-ls"
local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier,
  formatting.black,
  formatting.gofmt,
  formatting.shfmt,
  formatting.clang_format,
  formatting.rustfmt,
  formatting.stylua,

  lint.shellcheck,
  lint.eslint_d,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
}

