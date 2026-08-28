-- Diffview plugin for checking git diffs
vim.pack.add {
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/sindrets/diffview.nvim',
}

require('diffview').setup {}

-- Diffview keymaps
require('which-key').add { { '<leader>g', group = 'Git Difftool' } }
vim.keymap.set('n', '<leader>gd', '<cmd>DiffviewOpen<CR>', { desc = '[G]it [D]iffview open' })
vim.keymap.set('n', '<leader>gD', '<cmd>DiffviewClose<CR>', { desc = '[G]it [D]iffview close' })
vim.keymap.set('n', '<leader>gh', '<cmd>DiffviewFileHistory<CR>', { desc = '[G]it file [H]istory' })
