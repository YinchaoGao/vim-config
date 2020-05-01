for file in split(glob("~/.vim/config/*.vim"))
    exe "source" file
endfor

let uninstalled = 0
for p in keys(plugs)
  if !len(finddir(plugs[p]["dir"]))
    let uninstalled = uninstalled + 1
  endif
endfor

if uninstalled
  echom "Installing" uninstalled "plugins..."
  PlugInstall --sync | q
endif
