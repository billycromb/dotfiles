let b:ale_linters = ['ruby', 'srb', 'rubocop']

call ale#Set('ruby_sorbet_executable', 'bundle')
call ale#Set('ruby_sorbet_enable_watchman', 1)

function! IsShopifyRepo()
  let l:buffer_filename = fnameescape(fnamemodify(bufname(bufnr('')), ':p'))
  return match(l:buffer_filename, '[Ss]hopify\/shopify') != -1
endfunction

function! GetShopifyRepoRoot()
  let l:buffer_filename = fnameescape(fnamemodify(bufname(bufnr('')), ':p'))
  return matchstr(l:buffer_filename, '^.*[Ss]hopify\/shopify\/')
endfunction

if IsShopifyRepo()
  let b:ale_lsp_root = GetShopifyRepoRoot()
endif
