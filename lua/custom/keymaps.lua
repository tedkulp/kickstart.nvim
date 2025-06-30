local keymap = vim.keymap.set

-- quit
keymap('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit All' })

if vim.g.vscode then
  local vscode = require 'vscode'

  keymap('n', '<leader>gg', function()
    vscode.action 'lazygit-vscode.toggle'
  end, { desc = 'Lazygit Toggle', silent = true })

  keymap('n', '<c-/>', function()
    vscode.action 'workbench.action.terminal.toggleTerminal'
  end, { desc = 'Terminal', silent = true })

  keymap('n', '<leader>bd', function()
    vscode.action 'workbench.action.closeActiveEditor'
  end, { desc = 'Close Buffer', silent = true })

  keymap('n', '<leader>bo', function()
    vscode.action 'workbench.action.closeOtherEditors'
  end, { desc = 'Close Other Buffers', silent = true })

  keymap('n', '<leader>e', function()
    vscode.action 'workbench.view.explorer'
  end, { desc = 'Close Other Buffers', silent = true })
end
