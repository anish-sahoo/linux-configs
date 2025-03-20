# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
. "$HOME/.cargo/env"

alias ll='exa --bytes --header --long --color always --icons --sort=type'
alias lla='exa -all --bytes --header --long --color always --icons --sort=type'
alias dockerps='docker ps -a'
alias copy='xsel -ib'

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Do this if you want to remove the first newline from starship prompt
#show_newline() {
#  if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
#    NEW_LINE_BEFORE_PROMPT=1
#  elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
#    echo ""
#  fi
#}
#PROMPT_COMMAND="show_newline"

eval "$(starship init bash)"
starship preset nerd-font-symbols -o ~/.config/starship.toml
export STARSHIP_CONFIG=~/.config/starship.toml


# bun
export BUN_INSTALL="$HOME/.local/share/reflex/bun"
export PATH=$BUN_INSTALL/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DOCKER_HOST=unix:///home/asahoo/.docker/desktop/docker.sock
export PATH="$(yarn global bin):$PATH"

export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-21.0.4.0.7-2.fc40.x86_64

export PATH="/usr/local/bin:$PATH"

[ -f "/home/asahoo/.ghcup/env" ] && . "/home/asahoo/.ghcup/env" # ghcup-env

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH="$PATH:/home/asahoo/.cache/scalacli/local-repo/bin/scala-cli"
export PATH="$PATH:/home/asahoo/.local/share/coursier/bin"

export PATH=$PATH:/usr/local/go/bin
