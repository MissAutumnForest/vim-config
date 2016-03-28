rm -rf ~/.vimrc ~/.vim

cp ./.vimrc ~/.vimrc
cp -R ./.vim ~/.vim

git clone git@github.com:kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone git@github.com:scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone git@github.com:rking/ag.vim ~/.vim/bundle/ag.vim
# TODO: write script that installs "ag" onto the system based on operating system
