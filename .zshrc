export ZSH="/home/sln/.oh-my-zsh"

ZSH_THEME="bira"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

(cat ~/.cache/wal/sequences &)

alias reload="source $HOME/.zshrc"

alias catty="kitty +kitten icat"
alias clock="tty-clock -csS"
alias matrix="cmatrix -rsbo"

function gitty() {
	git add .
	git commit -m "$1"
	git push
}

function customify() {
	wal -q -n -i $1
	$HOME/.config/pywal-discord/pywal-discord -t default
	spicetify update && rm $HOME/.Xresources && cp $HOME/.cache/wal/colors.Xresources $HOME/.Xresources && xrdb -merge ~/.Xresources
}
