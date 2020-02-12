if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source "~/.vim/init.vim"
endif

for file in split(glob("~/.vim/config/*.vim"))
    exe "source" file
endfor
