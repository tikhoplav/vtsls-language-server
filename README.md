# Dockerized vtsls-language-server

> [Original repo](https://github.com/yioneko/vtsls)

Can be used with `nvim` lsp using the following config:

```lua
local root_dir = vim.fn.getcwd()

require('lspconfig').vtsls.setup({
  before_init = function(params)
    params.processId = vim.NIL
  end,
  cmd = {
    'docker', 'run', '-i', '--rm',
    '-v', root_dir .. ':' .. root_dir,
    'tikhoplav/vtsls-language-server:0.2.3',
  },
})
```

