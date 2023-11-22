#/bin/bash

sys_vimrc="$HOME/.vimrc"
ori_vimrc="$HOME/.vim/myvimrcs/.vimrc"
if [ -e "$sys_vimrc" ]; then
  echo "Error: $sys_vimrc already exist, exit!"
  exit 1
fi

touch "$sys_vimrc"
echo "\" =============================="  >> $sys_vimrc
echo "\" Auto-generated, don't edit.   "  >> $sys_vimrc
echo "\" Modify this ==>  $ori_vimrc"     >> $sys_vimrc
echo "\" ==============================\n\n\n"  >> $sys_vimrc

cat $ori_vimrc >> $sys_vimrc
echo "Installed the Vim configuration successfully! Enjoy :-)"

