return {
  -- Replace with register and don"t copy (use gr instead of r)
  'inkarkat/vim-ReplaceWithRegister',
  event = 'BufEnter',
  vscode = true,
  keys = {
    { 'gr', '<Plug>ReplaceWithRegisterOperator', desc = 'Replace w/o yank', mode = { 'n' } },
    { 'grr', '<Plug>ReplaceWithRegisterLine', desc = 'Replace line w/o yank', mode = { 'n' } },
    { 'gr', '<Plug>ReplaceWithRegisterVisual', desc = 'Replace w/o yank', mode = { 'x' } },
  },
}
