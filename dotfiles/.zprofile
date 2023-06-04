export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
gpg-agent || gpg-agent --daemon

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    export LC_MESSAGES="ja_JP.UTF-8"

    #exec sway --unsupported-gpu
    #exec dbus-run-session Hyprland
    exec i3
else
    export LC_MESSAGES="en_US.UTF-8"
fi
