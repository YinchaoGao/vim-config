function! CheckAndInstallPlugin()
    let l:uninstalled = 0
    for p in keys(g:plugs)
      if !isdirectory(g:plugs[p]["dir"])
        let l:uninstalled = 1
        break
      endif
    endfor
    if l:uninstalled
      echom "Installing plugins..."
      PlugInstall --sync | q
      echom "Install successfully."
    endif
endfunction

if !filereadable(expand("~/.vim/autoload/plug.vim"))
    echom "Downloading vim-plug..."
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    source $MYVIMRC
else
    for f in split(glob("~/.vim/config/*.vim"))
        execute "source" f
    endfor
    call CheckAndInstallPlugin()
endif

