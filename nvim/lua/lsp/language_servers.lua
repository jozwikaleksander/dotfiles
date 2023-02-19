-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig.configs'.ls_emmet = {
  default_config = {
      cmd = { 'ls_emmet', '--stdio' };
      filetypes = {'html','css','scss'};
      root_dir = function(_)
        return vim.loop.cwd()
      end;
      settings = {};
  };
}
local langservers = {
  'html',
  'cssls',
  'tsserver',
  'pylsp',
  'ls_emmet',
  'lua_ls'
}

for _, server in ipairs(langservers) do
  if server == 'lua_ls' then
    require'lspconfig'[server].setup{
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'},
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
      },
    }
  else
    require'lspconfig'[server].setup{
      capabilities = capabilities
    }
  end
end
