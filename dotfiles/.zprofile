if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    export LC_MESSAGES="ja_JP.UTF-8"

    export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
    devmon &
    #exec sway --unsupported-gpu
    exec dbus-run-session Hyprland
else
    export LC_MESSAGES="en_US.UTF-8"
fi
