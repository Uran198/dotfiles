local lspconfig = require('lspconfig')
local M = {}

function M.setup()
  local capabilities = require('cmp_nvim_lsp').default_capabilities()

  lspconfig.tsserver.setup {
    capabilities = capabilities,
    init_options = {
      hostInfo = 'neovim',
    }
  }

  lspconfig.eslint.setup {
    capabilities = capabilities,
    -- TODO: Reconsider doing this at write - latency may not be good.
    on_attach = function(client, bufnr)
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        command = "EslintFixAll",
      })
    end,
  }

  local prettier = {
    formatCommand = 'prettierd "${INPUT}"',
    formatStdin = true,
    env = {
      'PRETTIERD_LOCAL_PRETTIER_ONLY=1',
    },
  }

  lspconfig.efm.setup {
    capabilities = capabilities,
    init_options = {documentFormatting = true},
    settings = {
      rootMarkers = {".git/"},
      logFile = "/tmp/efm.log",
      logLevel = 1,
      languages = {
        lua = {
          {formatCommand = "lua-format -i", formatStdin = true}
        },
        javascript = {prettier},
        typescript = {prettier},
        typescriptreact = {prettier},
      }
    },
    filetypes = { 'javascript', 'typescript', 'typescriptreact' },
  }

  lspconfig.beancount.setup {
    capabilities = capabilities,
    init_options = {
      -- journal_file = "<path to journal file>",
      pythonPath = "/home/attila/.pyenv/shims/python3",
    };
  };

  lspconfig.pylsp.setup { };

  -- Use LspAttach autocommand to only map the following keys
  -- after the language server attaches to the current buffer
  vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
      -- Enable completion triggered by <c-x><c-o>
      vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

      -- Buffer local mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      local opts = { buffer = ev.buf }
      -- Declarations aren't supported for TS.
      -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gD', vim.lsp.buf.type_definition, opts)

      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
      vim.keymap.set('n', '<space>f', function()
        vim.lsp.buf.format {
          -- async = true,
          -- timeout_ms = 1000,
          filter = function(client) return client.name == "efm" end,
        }
        vim.cmd [[write]]
      end, opts)
    end,
  })

  -- See `:help vim.diagnostic.*` for documentation on any of the below functions
  vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

  -- TODO: Figure out configuration, possibly get rid of or replace with something else.
  require "lsp_signature".setup({
    floating_window = true,
  })

end

return M
