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

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
source /usr/local/bin/virtualenvwrapper.sh

# Nvidia
export PATH=/Developer/NVIDIA/CUDA-7.0/bin:$PATH
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.0/lib:$DYLD_LIBRARY_PATH

export PYLEARN2_DATA_PATH=$HOME/Data
export PYLEARN2_VIEWER_COMMAND="open -Wn"
# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH=/usr/texbin:$PATH
export GOROOT="$HOME/local/bin/go"
export GOPATH="$HOME/workspace/go_projects"
PATH="$GOROOT/bin:$GOPATH/bin:$PATH"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/thomas/Downloads/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/thomas/Downloads/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/thomas/Downloads/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/thomas/Downloads/google-cloud-sdk/completion.zsh.inc'
fi
