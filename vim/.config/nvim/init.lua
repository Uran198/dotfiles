vim.cmd [[
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/options.vim
]]

-- Required to work in Nix.
vim.g.python3_host_prog = '/usr/bin/python3'

-- TODO: Find a better place for this configuration.
-- For JS - fixes enum using 4 spaces indentation everywhere apart form the first line.
vim.g.typescript_indent_disable = 1

-- TODO: Find a better place for this configuration.
vim.g.vimspector_enable_mappings = 'HUMAN'

require('custom.lsp').setup()
require('custom.cmp').setup()
require('hop').setup()
