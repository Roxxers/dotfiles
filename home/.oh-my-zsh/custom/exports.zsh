export EDITOR="nvim";
export SHELL="/usr/bin/zsh";

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8';
# Pipenv config for making venvs in project dir
export PIPENV_VENV_IN_PROJECT=1

# Prefer UK English and use UTF-8.
export LANG='en_GB.UTF-8';
export LC_ALL='en_GB.UTF-8';

# Git credentials
export GIT_AUTHOR_NAME="Roxie Gibson"
export GIT_COMMITTER_NAME=$GIT_AUTHOR_NAME
git config --global user.name $GIT_AUTHOR_NAME
export GIT_AUTHOR_EMAIL="me@roxxers.xyz"
export GIT_COMMITTER_EMAIL=$GIT_AUTHOR_EMAIL
git config --global user.email $GIT_AUTHOR_EMAIL

# Golang path
export GOPATH=$HOME/Projects/go
export GO111MODULE=on
