#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## ALIASES
alias ls='ls --color=auto --group-directories-first'
alias c='clear'
alias mkdir='mkdir -pv'

# Confirmations
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

## FUNCTIONS
#take
function take {
	mkdir $1
	cd $1
}

#quick notes
function note {
	echo "date: $(date)" >> $HOME/documents/notes.txt
	echo "$@" >> $HOME/documents/notes.txt
	echo "" >> $HOME/documents/notes.txt
	echo "Note saved to $HOME/documents/notes.txt"
}

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


## HOME DIRECTORIES
export XDG_DOCUMENTS_DIR="$HOME/documents"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_PICTURES_DIR="$HOME/media/pictures"
export XDG_MUSIC_DIR="$HOME/media/music"
export XDG_VIDEOS_DIR="$HOME/media/videos"

## DISPLAYS ON NEW TERMINAL OPEN
neofetch

# Packages to update
update_count=$(checkupdates | wc -l)
echo -e "Available updates: $update_count package(s)\n"

# Random quote
quote=$(shuf -n 1 $HOME/documents/quotes.txt) && echo -e "$quote\n"
