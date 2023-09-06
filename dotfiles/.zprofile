gpg-agent || gpg-agent --daemon
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"

if [ -z "${DISPLAY}" ]; then
    export LANG="ja_JP.UTF-8"
    exec startx
else
    export LANG="en_US.UTF-8"
fi
