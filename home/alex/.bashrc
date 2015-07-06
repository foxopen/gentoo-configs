# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# PS1
export PS1="\[$(tput setaf 7)\]\[$(tput setaf 2)\]\u\[$(tput setaf 1)\]\w\[$(tput sgr0)\] "

# command aliases
alias sudo="sudo "
alias emerge="emerge -q"

export PATH=$PATH:/usr/bin/ruby
export LANG="en_US.UTF-8"
export LC_COLLATE="C"
