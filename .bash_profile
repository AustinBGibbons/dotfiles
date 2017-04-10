[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export JAVA_HOME=$(/usr/libexec/java_home)

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

shopt -s histappend
HISTFILESIZE=1000000
HISTSIZE=1000000
HISTCONTROL=ignoreboth
shopt -s cmdhist
PROMPT_COMMAND='history -a'

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

heroku() {
  osascript -e "tell application \"iTerm\" to set background color of current session of current terminal to {0, 15000, 0}"
  command heroku "${@}"
  osascript -e "tell application \"iTerm\" to set background color of current session of current terminal to {0, 0, 0}"
}

# MacPorts Installer addition on 2016-02-04_at_17:26:36: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

alias frc='foreman run spring rails console'

export PATH=/usr/local/MacGPG2/bin/:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/austin/Downloads/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/austin/Downloads/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/austin/Downloads/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/austin/Downloads/google-cloud-sdk/completion.bash.inc'
fi

alias fastcop='git diff --name-only HEAD | xargs rubocop -a'
