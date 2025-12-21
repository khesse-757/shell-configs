# tcsh/csh Configuration Template
# Git-aware prompt with colors
#
# Requires: ~/.git_prompt.sh (see repo)

# Define colors for prompt
set     red="%{\033[1;31m%}"
set   green="%{\033[0;32m%}"
set  yellow="%{\033[1;33m%}"
set    blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[0;37m%}"
set     end="%{\033[0m%}"

# Aliases
alias ll "ls -lrt"
alias sl "ls"
alias e "gedit"
alias c "code"
alias h "history"

# precmd runs before each prompt - get git info from helper script
alias precmd 'set git_info = `~/.git_prompt.sh`; set prompt = "${green}[${end}${magenta}%n${end}${yellow}@${end}${green}%m${end}:${cyan}%~${end}${green}]${end}${yellow}${git_info}%#${end} "'

# Initial prompt (before first precmd runs)
set prompt="${green}[${end}${magenta}%n${end}${yellow}@${end}${green}%m${end}:${cyan}%~${end}${green}]${end}${yellow}%#${end} "

# =============================================================================
# Optional: Uncomment and configure as needed
# =============================================================================

# History settings
# set history=1000
# set savehist=1000

# Use full path instead of ~ for home directory
# Change %~ to %/ in the prompts above

# Enable ls colors on Linux (RHEL, etc.)
# eval `dircolors -c`

# Or set custom LS_COLORS (directories in bold yellow example)
# setenv LS_COLORS 'di=01;33:ln=01;36:ex=01;32'