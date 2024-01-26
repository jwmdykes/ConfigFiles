# Linux config files

I just clone this repo then make symbolic links to the appropriate config files. 

For example, for the tmux configuration:

```
ln -s $(pwd)/.tmux.conf $HOME/.tmux.conf
```

For vim:

```
ln -s $(pwd)/.vimrc $HOME/.vimrc
ln -s $(pwd)/.vimrc $HOME/.config/nvim/init.vim 
```

Or just run the `install.sh` script to make the links automatically (and delete existing configurations)