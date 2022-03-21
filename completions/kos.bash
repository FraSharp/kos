#!/usr/bin/env bash
# ** bash completion script **

_kos() {
    local words cword cmd
    _init_completion -s || return

    for ((cmd = 1; cmd <= cword; cmd++)); do
        if [[ ${words[cmd]} != -* ]]; then
            local PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin
            _command_offset $cmd
            return
        fi
    done
} && complete -F _kos -o bashdefault -o default kos