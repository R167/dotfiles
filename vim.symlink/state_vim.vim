if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/wmd/.vim,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim81,/usr/local/share/vim/vimfiles/after,/Users/wmd/.vim/after,/Users/wmd/.vim/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/wmd/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/wmd/.vim'
let g:dein#_runtime_path = '/Users/wmd/.vim/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/wmd/.vim/.cache/.vimrc'
let &runtimepath = '/Users/wmd/.vim,/usr/local/share/vim/vimfiles,/Users/wmd/.vim/repos/github.com/Shougo/dein.vim,/Users/wmd/.vim/.cache/.vimrc/.dein,/usr/local/share/vim/vim81,/Users/wmd/.vim/.cache/.vimrc/.dein/after,/usr/local/share/vim/vimfiles/after,/Users/wmd/.vim/after'
