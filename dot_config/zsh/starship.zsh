# Spaceship prompt
autoload -U promptinit; promptinit
prompt spaceship
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  docker        # Docker section
  python
  conda         # conda virtualenv section
  dotnet        # .NET section
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
  battery
	time
)
SPACESHIP_TIME_SHOW=true

