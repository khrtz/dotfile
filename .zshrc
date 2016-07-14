
# 少し凝った zshrc
alias julia="/Applications/Julia-0.3.9.app/Contents/Resources/julia/bin/julia"




if [ -x "`which go`" ]; then
           export GOROOT=`go env GOROOT`
           export GOPATH=$HOME/code/go-local
           export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
     fi

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=/Users/kohee/mongodb/bin:$PATH
# License : MIT
# http://mollifier.mit-license.org/

########################################
# 環境変数
export LANG=ja_JP.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias coteditor='open -a CotEditor'

#alias emacs="TERM=xterm-256color /usr/local/bin/emacs"



# 色を使用出来るようにする
autoload -Uz colors
colors

unsetopt auto_menu

# emacs 風キーバインドにする
bindkey -e

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# プロンプト
# 1行表示
# PROMPT="%~ %# "
# 2行表示
PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
%# "
function google() {
local str opt
if [ $ != 0 ]; then
for i in $*; do
str="$str+$i"
done
str=`echo $str | sed 's/^\+//'`
opt='search?num=50&hl=ja&lr=lang_ja'
opt="${opt}&q=${str}"
fi
w3m http://www.google.co.jp/$opt
}


function alc() {
if [ $ != 0 ]; then
w3m "http://eow.alc.co.jp/$*/UTF-8/?ref=sa"
else
w3m "http://www.alc.co.jp/"
fi
}


# 単語の区切り文字を指定する
autoload -Uz select-word-style
select-word-style default
# ここで指定した文字は単語区切りとみなされる
# / も区切りと扱うので、^W でディレクトリ１つ分を削除できる
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

########################################
# 補完
# 補完機能を有効にする
autoload -Uz compinit
compinit

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

# sudo の後ろでコマンド名を補完する
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'


########################################
# vcs_info
autoload -Uz vcs_info
autoload -Uz add-zsh-hook

zstyle ':vcs_info:*' formats '%F{green}(%s)-[%b]%f'
zstyle ':vcs_info:*' actionformats '%F{red}(%s)-[%b|%a]%f'

function _update_vcs_info_msg() {
    LANG=en_US.UTF-8 vcs_info
    RPROMPT="${vcs_info_msg_0_}"
}
add-zsh-hook precmd _update_vcs_info_msg


########################################
# オプション
# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# beep を無効にする
setopt no_beep

# フローコントロールを無効にする
setopt no_flow_control

# '#' 以降をコメントとして扱う
setopt interactive_comments

# ディレクトリ名だけでcdする
setopt auto_cd

# cd したら自動的にpushdする
setopt auto_pushd
# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 高機能なワイルドカード展開を使用する
setopt extended_glob

########################################
# キーバインド

# ^R で履歴検索をするときに * でワイルドカードを使用出来るようにする
bindkey '^R' history-incremental-pattern-search-backward

########################################
# エイリアス

alias la='ls -a'
alias ll='ls -l'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# グローバルエイリアス
alias -g L='| less'
alias -g G='| grep'

# C で標準出力をクリップボードにコピーする
# mollifier delta blog : http://mollifier.hatenablog.com/entry/20100317/p1
if which pbcopy >/dev/null 2>&1 ; then
    # Mac
    alias -g C='| pbcopy'
elif which xsel >/dev/null 2>&1 ; then
    # Linux
    alias -g C='| xsel --input --clipboard'
elif which putclip >/dev/null 2>&1 ; then
    # Cygwin
    alias -g C='| putclip'
fi

# cdしたあとで、自動的に ls する
function chpwd() { ls -1 }



########################################
# OS 別の設定
case ${OSTYPE} in
    darwin*)
        #Mac用の設定
        export CLICOLOR=1
        alias ls='ls -G -F'
        ;;
    linux*)
        #Linux用の設定
        alias ls='ls -F --color=auto'
        ;;
esac

# vim:set ft=zsh:

alias code="open -g -a /Applications/Visual\ Studio\ Code.app"

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/kohee/Downloads/cocos2d-x/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/kohee/Downloads/cocos2d-x/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/kohee/Downloads/cocos2d-x-3.4/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/kohee/Downloads/cocos2d-x-3.4/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/Applications/android/ndk-r9d
export PATH=$NDK_ROOT:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/local/Cellar/ant/1.9.4/libexec/bin
export PATH=$ANT_ROOT:$PATH

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/kohee/cocos2d-x-3.4/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/kohee/cocos2d-x-3.4/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/Applications/Android/sdk
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

PERL_MB_OPT="--install_base \"/Users/kohee/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/kohee/perl5"; export PERL_MM_OPT;

PATH=/bin:/usr/bin:/usr/local/bin:${PATH}


export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init - zsh)"

