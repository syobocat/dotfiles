if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    export LC_MESSAGES="ja_JP.UTF-8"

    export GTK_IM_MODULE=fcitx
    export QT_IM_MODULE=fcitx
    export SDL_IM_MODULE=fcitx
    export XMODIFIERS=@im=fcitx
else
    export LC_MESSAGES="en_US.UTF-8"
fi
