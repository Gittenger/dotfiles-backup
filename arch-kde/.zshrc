# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:./node_modules/.bin:$HOME/.local/bin"

# Path to your oh-my-zsh installation.
export ZSH="/home/john/.config/zsh/oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="terminalparty"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
export HISTFILE=$ZDOTDIR/history
export ZSH_CUSTOM=$HOME/.config/zsh/custom

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git 
  #fzf
  #autojump
  #zsh-syntax-highlighting
  #zsh-autosuggestions
  )

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#bindkey -e
#bindkey "^[[3;3~" kill-word

# Autojump
#[[ -s /home/john/.autojump/etc/profile.d/autojump.sh ]] && source /home/john/.autojump/etc/profile.d/autojump.sh

#autoload -U compinit && compinit -u

# FZF
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# FZF COLOR THEME
#export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
#--color fg:242,bg:233,hl:65,fg+:15,bg+:234,hl+:108
#--color info:108,prompt:109,spinner:108,pointer:168,marker:168
#'

# Setting fd as the default source for fzf
#export FZF_DEFAULT_COMMAND='fd --type f'
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#export FZF_ALT_C_COMMAND="fd -t d . $HOME"


# To apply the command to CTRL-T as well
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

source $ZSH/oh-my-zsh.sh

# Folders to load custom functions
for f in $ZSH_CUSTOM/functions/*; do source $f; done
#for f in $ZSH_CUSTOM/react-scripts/*; do source $f; done

# Custom variables
#export NODE_V=$HOME/.nvm/versions/node/v15.14.0/lib/node_modules
#export HSH=/home/shared
#export XTRA=/mnt/xtra
#export NODE_SCRIPTS="$HOME/scripts/node-scripts"
#export REACT_COMPONENT_LIB="${HOME}/code/lib/react-component-library/tailwind"
#export RCLONE_NOTES="$HOME/media/documents/notes"
#export RCLONE_BOOKS="$HOME/media/documents/books/books"
#export RCLONE_GNOTE="$HOME/.local/share/gnote"
#export RCLONE_LANG="$HSH/media/documents/languages"
#export RCLONE_BLOG="$HSH/media/documents/blog-posts"
#export RCLONE_ICONS="$HSH/assets/icons"
#export RCLONE_ILLUSTRATIONS="$HSH/assets/illustrations"
#export RCLONE_INSPIRATION="$HSH/assets/inspiration"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# set editor so I can use sudo -e to edit as root with nvim
#export EDITOR=nvim

# auto-suggestions custom key
#bindkey '^ ' autosuggest-accept

neofetch
