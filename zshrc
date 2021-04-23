autoload -U colors && colors
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}art %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
PS1="%~ 👻  "
setopt autocd
setopt cdable_vars

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export HISTFILE="$XDG_CACHE_HOME/history"
export LESSKEY="$XDG_CONFIG_HOME/less/lesskey"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
export PYTHONHISTORY="$XDG_CACHE_HOME/python/history"
export ATOM_HOME="$XDG_DATA_HOME/atom"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export ANDROID_PREFS_ROOT="$XDG_CONFIG_HOME/android"
export ADB_KEYS_PATH="$ANDROID_PREFS_ROOT"
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME/android/emulator"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
export IPYTHONDIR="$JUPYTER_CONFIG_DIR"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch/notmuchrc"
export NMBGIT="$XDG_DATA_HOME/notmuch/nmbug"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/init.py"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias clear="printf '\33c\e[3J'"
alias vim="nvim"
alias ls="exa"

function github() { git clone https://github.com/$1/$2.git }
function gitlab() { git clone https://gitlab.com/$1/$2.git }

autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

hash -d d=~/Documents

colorscript -r | tail -n+2
