#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations and aliases
#
#  Sections:
#  1.  Environment Configuration
#  2.  Make Terminal Better (remapping defaults and adding functionality)
#  3.  File and Folder Management
#  4.  Searching
#  5.  Process Management
#  6.  Networking
#  7.  System Operations & Information
#  8.  Web Development
#  9.  Reminders & Notes
#
#  ---------------------------------------------------------------------------

#   -------------------------------
#   1. ENVIRONMENT CONFIGURATION
#   -------------------------------
	sudo sysctl -w kern.sysv.shmmax=1610612736
	sudo sysctl -w kern.sysv.shmall=393216
	sudo sysctl -w kern.sysv.shmmin=1
	sudo sysctl -w kern.sysv.shmmni=32
	sudo sysctl -w kern.sysv.shmseg=8
	sudo sysctl -w kern.maxprocperuid=512
	sudo sysctl -w kern.maxproc=2048


#   Set Paths
#   ------------------------------------------------------------
    export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
    export PATH="/Library/PostgreSQL/9.6/bin:$PATH"

#   Set Java version
#   ------------------------------------------------------------
	export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
    export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
    export CLICOLOR=1
    export LSCOLORS=ExFxBxDxCxegedabagacad
    alias ls='ls -GFh'

#   -----------------------------
#   2. MAKE TERMINAL BETTER
#   -----------------------------
    alias ls='ls -GFh'
    alias ll='ls -al'
    alias gdb='sudo gdb-apple'
    alias vim='mvim -v'

#   -----------------------------
#   3. Add an appropriate PATH variable for use with MacPorts.
#   -----------------------------
	export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

#   -----------------------------
#   4. Enable bash-completion 
#   -----------------------------
	if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
	fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/namo/google-cloud-sdk/path.bash.inc' ]; then source '/Users/namo/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/namo/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/namo/google-cloud-sdk/completion.bash.inc'; fi
