# VIMRC

This is my VIM configuration file. It uses [Plug](https://github.com/junegunn/vim-plug) for the plugin manager and have a bunch of plugins designed to provide the best minimalist experience for coding in VIM. You need to have [node.js](https://github.com/nodejs/node), [npm](https://github.com/npm/cli) and a [nerd font](https://www.nerdfonts.com/) installed for some of the plugins to work.

To install everything in your machine you can just run the command

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
&& curl -fLo ~/.vimrc --create-dirs \
https://raw.githubusercontent.com/brunozer09/vimrc/refs/heads/main/.vimrc 
```

Once you have everything installed, just run the command

```vim 
:PlugInstall
```

And everything should install automatically.

## List of Plugins

* [Airline](https://github.com/vim-airline/vim-airline) for a better status line in VIM. Shows informations about the editor, such as current mode, file name, file extension etc. Its functionality can be extended with further plugins. This file also have [Airline themes](https://github.com/vim-airline/vim-airline-themes) and [Airline clock](https://github.com/enricobacis/vim-ariline-clock) installed.
* [Startify](https://github.com/mhniz/vim-startify) for a custom start screen.
* [NerdTree](https://github.com/preservim/nerdtree) for a file manager. Paired with [vimdevicons](https://github.com/vim-devicons) for better appearance.
* [Auto pairs](https://github.com/jiangmiao/auto-pairs) for brackets autocompletion. ~~Really, why this needs a separate extension to exist?~~
* [VIM todo highlighting](https://github.com/sakshamgupta05/vim-todo-highlight).
* [A fuzzy finder](junegunn/fzf.vim)
* [Auto completion](neoclide/coc.nvim). This one need the node.js and npm installed to work. You also have to install the language server protocol of your desired language (you can do that with the command `:CocInstall <the-lsp-of-your-choice>`.
* [A markdown preview extension](https://github.com/iamcco/markdown-preview.nvim) to edit markdown files.
* Finally, [Fugitive](https://github.com/tpope/vim-fugitive) for better git integration.

---

You can go to each plugin repository for more information on how to use it.
