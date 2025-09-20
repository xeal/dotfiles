"
" GUI options
"
set antialias                                       " Mac OS X: use smooth, antialiased fonts
set columns=9999                                    " number of columns in the display (use 9999 to get the widest window possible)
set grepformat=%f:%l:%m                             " ack-friendly options for :grep
set grepprg=ack                                     " if we're running in a GUI assume that ack is installed
set guifont=SF\ Mono:h13,Fira\ Code:h13,Menlo:h13
set guiheadroom=0                                   " GUI: pixels room for window decorations
set guioptions-=T                                   " hide the toolbar
set guioptions-=r guioptions-=L                     " disable the default scrollbars
set guioptions+=k                                   " Keep the GUI window size when adding/removing a scrollbar, toolbar, tabline, etc.
set guitablabel=%t                                  " GUI: custom label for a tab page (show file name of the file in the buffer)
set guitabtooltip=%F                                " GUI: custom tooltip for a tab page (show full path of the file in the buffer)
set lines=999                                       " number of lines in the display (use 999 to get the tallest window possible)
set linespace=2                                     " number of pixel lines inserted between characters

" Map the tabs to Cmd-1..Cmd-9, web browser style
for i in range(1, 8)
  execute 'nnoremap <silent> <D-'. i . '> :tabnext ' . i . '<CR>'
endfor
nnoremap <silent> <D-9> :tablast<CR>

