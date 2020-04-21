#ls --color=al > /dev/null 2>&1 && alias ls='ls -F --color=al' || alias ls='ls -G'

export LSCOLORS=ExFxBxDxCxegedabagacad

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
source ~/.bashrc
export PATH="/Users/kevinl/.ebcli-virtual-env/executables:$PATH"
