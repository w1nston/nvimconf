-- https://lsp-zero.netlify.app/v3.x/getting-started.html

local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers
require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {
      'bashls',
      'cssls',
      'cssmodules_ls',
      'css_variables',
      'dockerls',
      'docker_compose_language_service',
      'html',
      'lua_ls',
      'omnisharp',
      'rust_analyzer',
      'tsserver'
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})
