export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export TERM=xterm-256color

alias ll='ls -iahl --color=auto'
alias ls='ls --color=auto'

alias ssh="TERM=xterm-256color ssh"

alias mc='. /usr/lib/mc/mc-wrapper.sh'

export VISUAL=vim
export EDITOR=vim

#-----------------------------------------
# NNN
#-----------------------------------------
export NNN_FIFO="/tmp/nnn.fifo"

if [ -f ~/.bashrc_local ]; then
    source ~/.bashrc_local
fi

#--------------------------------------------------------------------------------
# nnn
#--------------------------------------------------------------------------------

function n ()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The default behaviour is to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, remove the "export" as in:
    #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    # NOTE: NNN_TMPFILE is fixed, should not be modified
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

#==============================================
# JUMP
#----------------------------------------------

eval "$(jump shell)"

. "$HOME/.cargo/env"
