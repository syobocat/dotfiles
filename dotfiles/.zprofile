export LANG="ja_JP.UTF-8"
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
gpg-agent || gpg-agent --daemon

if [ -z "${DISPLAY}" ]; then
    export LC_MESSAGES="ja_JP.UTF-8"

    #exec sway --unsupported-gpu
    #exec dbus-run-session Hyprland
    exec startx
else
    export LC_MESSAGES="en_US.UTF-8"
fi
