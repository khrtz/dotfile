[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
export ARCHFLAGS="-arch x86_64"
export PGDATA="/usr/local/var/postgres"
export PATH=/usr/local:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/a14504/google-cloud-sdk/path.bash.inc' ]; then . '/Users/a14504/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/a14504/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/a14504/google-cloud-sdk/completion.bash.inc'; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/a14504/.sdkman"
[[ -s "/Users/a14504/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/a14504/.sdkman/bin/sdkman-init.sh"
