# Bash Profile Template
# Git-aware prompt with colors

# Silence macOS bash deprecation warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# Grep colors
export GREP_OPTIONS='--color=auto' GREP_COLORS='mt=1;32'

# Enable colors for ls
export CLICOLOR=1
export LSCOLORS=ExGxCxDxCxegedacagacad

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# Aliases
alias ll="ls -lrt"
alias sl="ls"
alias e="gedit"
alias c="code"
alias h="history"

# Get git branch name
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Find git dirty state
parse_git_dirty() {
    [[ -n "$(git status -s 2> /dev/null)" ]] && echo "*"
}

# Prompt: [user@host:~/path] (branch)*$
# Colors: green brackets, magenta user, yellow @, green host, cyan path, yellow git info
PS1='\[\e[32m\][\[\e[m\]\[\e[35m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[33m\]$(parse_git_branch)$(parse_git_dirty)\$\[\e[m\] '

# Default editor (change to your preference)
export EDITOR=code

# =============================================================================
# Optional: Uncomment and configure as needed
# =============================================================================

# Homebrew (macOS)
# eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# rbenv
# eval "$(rbenv init - bash)"

# Custom PATH additions
# export PATH="$HOME/bin:$PATH"
