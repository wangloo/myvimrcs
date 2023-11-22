" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

source ~/.vim/myvimrcs/basic.vim
source ~/.vim/myvimrcs/map.vim
source ~/.vim/myvimrcs/func.vim
source ~/.vim/myvimrcs/plugin_config.vim








