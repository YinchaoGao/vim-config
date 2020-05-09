if !filereadable(expand("~/.vim/autoload/plug.vim"))
    echom "Downloading vim-plug..."
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    source $MYVIMRC
else
    for f in split(glob("~/.vim/config/*.vim"))
        execute "source" f
    endfor
    for p in keys(g:plugs)
      if !isdirectory(g:plugs[p]["dir"])
        echom "Installing plugins..."
        PlugInstall --sync | q
        echom "Install successfully."
        break
      endif
    endfor
endif

