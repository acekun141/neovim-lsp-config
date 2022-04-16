if !exists('g:loaded_lspsaga') | finish | endif

lua << EOF

local saga = require 'lspsaga'
saga.init_lsp_saga {
  border_style = "round"
}


EOF


nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>
nnoremap <silent>gr :Lspsaga rename<CR>

nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
