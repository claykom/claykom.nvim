return {
  { 'tpope/vim-dadbod', lazy = true },
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true }, -- Optional
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_save_location = '~/Documents/scratch/db_ui_queries'
    end,
  },
}
