# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/edinomoniz/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( aws ansible 
	colored-man-pages 
	cp docker docker-compose
	docker-machine dotenv 
	extract git git-auto-fetch
	git-escape-magic git-extras
	gitfast git-flow git-flow-avh
	github git-hubflow gitignore
  	git-prompt history jfrog keychain
  	helm kubectl kube-ps1 minikube man
	microk8s nmap pip pipenv postgres
  	python rsync sudo svn
	svn-fast-info systemd
	terraform tmux vagrant
	vagrant-prompt vault
	vim-interaction virtualenv 
  	zsh-syntax-highlighting 
	zsh-autosuggestions zsh-completions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
# man page colored
man() {
  LESS_TERMCAP_md=$'\e[01;31m' \
  LESS_TERMCAP_me=$'\e[0m' \
  LESS_TERMCAP_se=$'\e[0m' \
  LESS_TERMCAP_so=$'\e[01;44;33m' \
  LESS_TERMCAP_ue=$'\e[0m' \
  LESS_TERMCAP_us=$'\e[01;32m' \
  command man "$@"
}

# my keychain 
/usr/bin/keychain $HOME/.ssh/id_rsa
source $HOME/.keychain/meml-sh
#export LESS_TERMCAP_mb=$'\e[01;31m'
#export LESS_TERMCAP_md=$'\e[1;31m'
#export LESS_TERMCAP_me=$'\e[0m'
#export LESS_TERMCAP_se=$'\e[0m'
#export LESS_TERMCAP_so=$'\e[01;44;33m'
#export LESS_TERMCAP_ue=$'\e[0m'
#export LESS_TERMCAP_us=$'\e[01;32m'


# my alias
alias uppuppet='ssh root@puppet.comodoca.net svn up /etc/puppetlabs'
alias gitdir="cd ~/git"
alias cdguard="cd ~/git/codeguard-sasp"
alias cdhacker="cd ~/git/hackerguardianQualysAPI"
alias findhost="~/svn/Infra/trunk/scripts/findhost.pl"
alias ovpnm="sudo openvpn /home/edinomoniz/VPN/mcdp.sectigo.net.ovpn"
alias ovpns="sudo openvpn /home/edinomoniz/VPN/scdp.sectigo.net.ovpn"
alias vpn="cd ~/VPN"
alias tlbx="cd ~/sectigo/tlbx/"
alias wrkf="cd ~/sectigo/wrkf/"
alias andorigna="cd ~/Development/andorigna"
alias puppetdir="cd ~/svn/Infra/trunk/configs/puppetlabs/code/environments/production"
alias nc="/usr/bin/ncat"
alias svndir="~/svn/"
alias certchase='/home/edinomoniz/git/scripts/certchase.sh '
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export MOZILLA_CERTIFICATE_FOLDER=sql:$HOME/.pki/nssdb
#export MOZILLA_CERTIFICATE_FOLDER=sql:$HOME/.mozilla/firefox/xkbmgp6v.default
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
source ~/.powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
