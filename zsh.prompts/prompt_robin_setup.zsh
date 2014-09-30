#
# A theme based on Steve Losh's Extravagant Prompt with vcs_info integration.
#
# Authors:
#   Steve Losh <steve@stevelosh.com>
#   Bart Trojanowski <bart@jukie.net>
#   Brian Carper <brian@carper.ca>
#   steeef_simplified <steeef_simplified@gmail.com>
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
# Screenshots:
#   http://i.imgur.com/HyRvv.png
#

function prompt_steeef_simplified_precmd {
  # Check for untracked files or updated submodules since vcs_info does not.
  if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
    branch_format="(${_prompt_steeef_simplified_colors[1]}%b%f%u%c${_prompt_steeef_simplified_colors[4]}●%f)"
  else
    branch_format="(${_prompt_steeef_simplified_colors[1]}%b%f%u%c)"
  fi

  zstyle ':vcs_info:*:prompt:*' formats "${branch_format}"

  vcs_info 'prompt'

  if (( $+functions[python-info] )); then
    python-info
  fi

  # Get ruby information
  if (( $+functions[ruby-info] )); then
    ruby-info
  fi
}

function prompt_steeef_simplified_setup {
  setopt LOCAL_OPTIONS
  unsetopt XTRACE KSH_ARRAYS
  prompt_opts=(cr percent subst)

  # Load required functions.
  autoload -Uz add-zsh-hook
  autoload -Uz vcs_info

  # Add hook for calling vcs_info before each command.
  add-zsh-hook precmd prompt_steeef_simplified_precmd

  # Formats:
  #   %b - branchname
  #   %u - unstagedstr (see below)
  #   %c - stagedstr (see below)
  #   %a - action (e.g. rebase-i)
  #   %R - repository path
  #   %S - path in the repository
  local branch_format="(${_prompt_steeef_simplified_colors[1]}%b%f%u%c)"
  local action_format="(${_prompt_steeef_simplified_colors[5]}%a%f)"
  local unstaged_format="${_prompt_steeef_simplified_colors[2]}●%f"
  local staged_format="${_prompt_steeef_simplified_colors[5]}●%f"

  # Set vcs_info parameters.
  zstyle ':vcs_info:*' enable bzr git hg svn
  zstyle ':vcs_info:*:prompt:*' check-for-changes true
  zstyle ':vcs_info:*:prompt:*' unstagedstr "${unstaged_format}"
  zstyle ':vcs_info:*:prompt:*' stagedstr "${staged_format}"
  zstyle ':vcs_info:*:prompt:*' actionformats "${branch_format}${action_format}"
  zstyle ':vcs_info:*:prompt:*' formats "${branch_format}"
  zstyle ':vcs_info:*:prompt:*' nvcsformats   ""

  # Set python-info parameters.
  zstyle ':prezto:module:python:info:virtualenv' format '(%v)'

  # Define prompts.
  PROMPT="%{$(maganda %n)%}%{$(brightwhite @)}%{$(brightyellow %m%f)} $(brightgreen %~%f)%} "'${vcs_info_msg_0_}'"$ "
  # "${_prompt_steeef_simplified_colors[3]}%n%f@${_prompt_steeef_simplified_colors[2]}%m%f ${_prompt_steeef_simplified_colors[5]}%~%f "'${vcs_info_msg_0_}'"$ "
  RPROMPT='%F{blue}${ruby_info[version]}'
}

prompt_steeef_simplified_setup "$@"