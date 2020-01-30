for file in split(glob("~/.vim/config/*.vim"))
    exe "source" file
endfor
