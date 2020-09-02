# vim-configuration
In here I'm trying to keep my vim-configuration up-to-date. 
My ambition is to keep it simple and fast whilst still having 
useful functionality from plugins!

--------------------------------------------------------------------------------
How to install:
1. Set up SSH-key with own repo
```
ssh-keygen
```
2. Clone the repo
```
git clone git@github.com:iernstig/vim-configuration.git ~/.vim

```
3. Install vim-plug
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
4. Add following line to `~/.vimrc`
```
source $HOME/.vim/configuration-loader.vim
```
5. Run PlugInstall, And you're done!

