rm -rf ~/.vimrc ~/.vim

cp ./.vimrc ~/.vimrc
cp -R ./.vim ~/.vim


# TODO: Write script that installs Ag based on OS
git clone git@github.com:rking/ag.vim ~/.vim/bundle/ag.vim

git clone git@github.com:kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone git@github.com:scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone git@github.com:jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
git clone git@github.com:alvan/vim-closetag.git ~/.vim/bundle/vim-closetag
git clone git@github.com:mattn/emmet-vim.git ~/.vim/bundle/emmet-vim
