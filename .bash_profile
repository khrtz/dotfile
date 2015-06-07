
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=/usr/local/bin:$PATH
export ARCHFLAGS="-arch x86_64"
export PGDATA="/usr/local/var/postgres"
alias cot='open -g -a CotEditor' # ターミナルからCotEditorを開く


#export NVM_DIR="/Users/kohee/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#nodebrew Root
nodebrew=$HOME/.nodebrew/current/bin
[ -d "$nodebrew" ] && export PATH=$nodebrew:$PATH
#mongodb
export PATH=/Users/kohee/mongodb/bin:$PATH

#GOPATH
export GOPATH=$HOME/.gopath
export PATH=$PATH:/Applications/MAMP/Library/bin

#visual studio code ターミナルからVS codeを開く

export PATH=/opt/chef/embedded/bin:$PATH



export PATH=$HOME/.chefdk/gem/ruby/2.1.1/bin:/opt/chefdk/bin:$PATH