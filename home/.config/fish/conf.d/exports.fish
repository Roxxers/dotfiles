export EDITOR="nvim";

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8';

# Prefer UK English and use UTF-8.
export LANG='en_GB.UTF-8';
export LC_ALL='en_GB.UTF-8';

# Git credentials
set GIT_AUTHOR_NAME "Roxie Gibson"
set GIT_COMMITTER_NAME $GIT_AUTHOR_NAME
git config --global user.name $GIT_AUTHOR_NAME
set GIT_AUTHOR_EMAIL "me@roxxers.xyz"
set GIT_COMMITTER_EMAIL $GIT_AUTHOR_EMAIL
git config --global user.email $GIT_AUTHOR_EMAIL

