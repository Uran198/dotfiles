
" TODO: Configure cwindow population with fzf and multi file selection on
" :Files.
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent><Leader><Leader> :nohls<CR>
nnoremap Y y$

nnoremap <Leader>ve :split $MYVIMRC<CR>
nnoremap <Leader>vs :source $MYVIMRC<CR>

nnoremap <Leader>gs :Git<CR>
nnoremap <Leader>gh :GBrowse<CR>
nnoremap <Leader>gb :Git blame<CR>

cnoremap <C-A> <C-B>

nnoremap <silent> <leader>h :lua require('hop').hint_words()<CR>
nnoremap <silent> <leader>/ :HopPattern<CR>
" vnoremap <silent> <leader>h :lua require('hop').hint_words()<CR>
omap     <silent> h :HopWord<CR>


"    " COC setup
"    nmap <silent> gd <Plug>(coc-definition)
"    nmap <silent> gy <Plug>(coc-type-definition)
"    nmap <silent> gi <Plug>(coc-implementation)
"    nmap <silent> gr <Plug>(coc-references)
"    
"    vmap <leader>f  <Plug>(coc-format-selected)
"    
"    nmap <leader>r  <Plug>(coc-rename)
"    
"    nmap <silent> ge <Plug>(coc-diagnostic-next)
"    nmap <silent> gp <Plug>(coc-diagnostic-prev)
"    " Jump between diagnostics
"    " nmap <silent> <Leader>dn <Plug>(coc-diagnostic-next)
"    " nmap <silent> <Leader>dp <Plug>(coc-diagnostic-prev)
"    
"    
"    autocmd FileType typescript,json,php setl formatexpr=CocAction('formatSelected')
"    command! -nargs=0 Format :call CocActionAsync('format')
"    
"    " Use K to show documentation in preview window.
"    nnoremap <silent> K :call ShowDocumentation()<CR>
"    function! ShowDocumentation()
"      if CocAction('hasProvider', 'hover')
"        call CocActionAsync('doHover')
"      else
"        call feedkeys('K', 'in')
"      endif
"    endfunction
"    
"    " Automatically close outline.
"    autocmd BufEnter * call CheckOutline()
"    function! CheckOutline() abort
"      if &filetype ==# 'coctree' && winnr('$') == 1
"        if tabpagenr('$') != 1
"          close
"        else
"          bdelete
"        endif
"      endif
"    endfunction
"    
"    nnoremap <silent><nowait> <leader>o  :call ToggleOutline()<CR>
"    function! ToggleOutline() abort
"      let winid = coc#window#find('cocViewId', 'OUTLINE')
"      if winid == -1
"        call CocActionAsync('showOutline', 1)
"      else
"        call coc#window#close(winid)
"      endif
"    endfunction
