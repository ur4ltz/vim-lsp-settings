augroup vimlsp_settings_sumneko_lua_lsp
  au!
  LspRegisterServer {
      \ 'name': 'sumneko-lua-lsp',
      \ 'cmd': {server_info->lsp_settings#get('sumneko-lua-lsp', 'cmd', [lsp_settings#exec_path('sumneko-lua-lsp')])},
      \ 'root_uri':{server_info->lsp_settings#get('sumneko-lua-lsp', 'root_uri', lsp_settings#root_uri('sumneko-lua-lsp'))},
      \ 'initialization_options': lsp_settings#get('sumneko-lua-lsp', 'initialization_options', v:null),
      \ 'whitelist': lsp_settings#get('sumneko-lua-lsp', 'whitelist', ['lua']),
      \ 'blacklist': lsp_settings#get('sumneko-lua-lsp', 'blacklist', []),
      \ 'config': lsp_settings#get('sumneko-lua-lsp', 'config', lsp_settings#server_config('sumneko-lua-lsp')),
      \ 'workspace_config': lsp_settings#get('sumneko-lua-lsp', 'workspace_config', {}),
      \ }
augroup END
