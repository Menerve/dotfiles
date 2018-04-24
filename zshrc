#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Nvidia
export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH="$CUDA_HOME/bin:$PATH"

export PYLEARN2_DATA_PATH=$HOME/Data
export PYLEARN2_VIEWER_COMMAND="open -Wn"
# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

PATH=/usr/texbin:$PATH

if [ -f "$HOME/workspace/go_projects" ]; then
    export GOPATH="$HOME/workspace/go_projects"
else
    export GOPATH="$HOME/Projects/go"
fi
export PATH="$GOPATH/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/Projects/google-cloud-sdk/path.zsh.inc" ]; then
  source "$HOME/Projects/google-cloud-sdk/path.zsh.inc"
fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/Projects/google-cloud-sdk/completion.zsh.inc" ]; then
  source "$HOME/Projects/google-cloud-sdk/completion.zsh.inc"
fi

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

