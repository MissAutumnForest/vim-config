eval `ssh-agent`
ssh-add

rm -rf ~/.vimrc ~/.vim

cp ./.vimrc ~/.vimrc
cp -R ./.vim ~/.vim
mkdir ~/.vim/undo

#brew install the_silver_searcher cmake
npm i -g eslint typescript tsc

# TODO: Write script that installs Ag based on OS
git clone git@github.com:rking/ag.vim ~/.vim/bundle/ag.vim

git clone git@github.com:kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone git@github.com:scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone git@github.com:jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
git clone git@github.com:alvan/vim-closetag.git ~/.vim/bundle/vim-closetag
git clone git@github.com:mattn/emmet-vim.git ~/.vim/bundle/emmet-vim
git clone git@github.com:hail2u/vim-css3-syntax.git ~/.vim/bundle/vim-css3-syntax
git clone git@github.com:groenewege/vim-less.git ~/.vim/bundle/vim-less
git clone git@github.com:isRuslan/vim-es6.git ~/.vim/bundle/vim-es6
git clone git@github.com:leafgarland/typescript-vim ~/.vim/bundle/typescript-vim
git clone git@github.com:airblade/vim-gitgutter.git ~/.vim/bundle/gitgutter
git clone git@github.com:ajh17/VimCompletesMe.git ~/.vim/bundle/vendor/start/VimCompletesMe
git clone git@github.com:prettier/vim-prettier ~/.vim/bundle/vim-prettier

# This is broken on latest MacOSX
# git clone git@github.com:Valloric/YouCompleteMe ~/.vim/bundle/youcompleteme
# pushd ~/.vim/bundle/YouCompleteMe
# git submodule update --init --recursive
# ./install.py --all
# popd

git clone git@github.com:maksimr/vim-jsbeautify.git ~/.vim/bundle/vim-jsbeautify
pushd ~/.vim/bundle/vim-jsbeautify
git submodule update --init --recursive
popd

git clone https://github.com/Quramy/tsuquyomi.git ~/.vim/bundle/tsuquyomi
