return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true }, -- Optional
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  config = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_dotenv_variable_prefix = 'GEOSOL_'

    -- vim.g.db_ui_env_variable_url = "sqlserver://D3FVSQL0100.geosolinc.com/S2019/GeoSQLTraining"
    -- vim.g.db_ui_env_variable_name = 'GeoSQLTraining'
    vim.g.db_ui_save_location = 'C:\\Users\\akominik\\Documents\\queries'

    vim.g.dbs = {
      { name = 'dev', url = 'postgres://postgres:mypassword@localhost:5432/my-dev-db' },
      { name = 'staging', url = 'postgres://postgres:mypassword@localhost:5432/my-staging-db' },
      { name = 'wp', url = 'mysql://root@localhost/wp_awesome' },
      {
        name = 'production',
        url = function()
          return vim.fn.system 'get-prod-url'
        end,
      },
    }
  end,
}
