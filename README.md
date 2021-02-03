# My Configuration Files

## Homebrew
|     Packages     |          Casks          |
|------------------|-------------------------|
| gnupg            | discord                 |
| ffmpeg           | whatsapp                |
| python           | zoom                    |
| openjdk          | skype                   |
| fish             | lyx                     |
| git              | google-chrome           |
| hub              | intellij-idea-ce        |
| node             | pycharm-ce              |
| yarn             | visual-studio-code      |
| llvm             | mactex-no-gui           |
| neovim           |                         |
| cowsay           |                         |
| fortune          |                         |

## Neovim

- Install `vim-plug`: `sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

## Large Cache Directories

- ~/Library/Android
- ~/Library/Caches
- ~/Library/Containers
- ~/Library/Developer

## Fish
```bash
sudo nvim /etc/shells # Add /usr/local/bin/fish
chsh -s $(which fish)
```

## Wget Hosts
Put the full path in `hsts-file \= "$XDG_CACHE_HOME/wget-hsts"`. Expand `$XDG_CACHE_HOME` manually.
