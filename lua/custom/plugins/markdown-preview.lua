-- Markdown Preview plugin with Mermaid support in fenced markdown blocks.
-- Commands: :MarkdownPreview, :MarkdownPreviewStop, :MarkdownPreviewToggle

vim.g.mkdp_filetypes = { 'markdown' }
vim.g.mkdp_auto_close = 0
vim.g.mkdp_theme = 'dark'

vim.pack.add {
  'https://github.com/iamcco/markdown-preview.nvim',
}

require('which-key').add { { '<leader>m', group = 'Markdown' } }
vim.keymap.set('n', '<leader>mp', '<cmd>MarkdownPreview<CR>', { desc = '[M]arkdown [P]review' })
vim.keymap.set('n', '<leader>ms', '<cmd>MarkdownPreviewStop<CR>', { desc = '[M]arkdown preview [S]top' })
vim.keymap.set('n', '<leader>mt', '<cmd>MarkdownPreviewToggle<CR>', { desc = '[M]arkdown preview [T]oggle' })
