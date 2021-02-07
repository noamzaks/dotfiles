# Prompt & Greeting
set -g fish_prompt_pwd_dir_length 80

function fish_prompt
    echo
    set_color red
    echo -n "╭ "
    set_color magenta
    echo (prompt_pwd)
    set_color red
	echo -n "╰ "
    set_color yellow
    echo -n "ε "
    set_color normal
end

function fish_right_prompt
    set_color cyan
	echo -n "∀ε ∃δ"
    set_color normal
end

function fish_greeting
    # fortune | cowthink
end

# Abbreviations
abbr -ag     v              nvim
abbr -ag     vim            nvim
abbr -ag     py             python3
abbr -ag     python         python3
abbr -ag     la             ls -la
abbr -ag     ll             ls -l
abbr -ag     l              ls -l
abbr -ag     git            hub
abbr -ag     please         sudo

# Aliases
alias        ls             "exa --group-directories-first"
alias        clear          "printf '\33c\e[3J'"
alias        wget           "wget --hsts-file=\"$XDG_CACHE_HOME/wget-hsts\""
alias        yarn           "yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Cleanup
export HISTFILE="$XDG_DATA_HOME/bash/history"
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

export SHELL_SESSION_HISTORY=0

eval (dircolors "$XDG_CONFIG_HOME/dircolors" | sed 's/LS_COLORS=/set LS_COLORS /g')

# Path
export PATH="$PATH:$HOME/.local/bin:$XDG_DATA_HOME/yarn/global/node_modules/.bin"
