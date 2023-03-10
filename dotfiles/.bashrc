# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
    # Shell is non-interactive.  Be done now!
    return
fi


# Put your fun stuff here.
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    export LC_MESSAGES="ja_JP.UTF-8"

    # Enable Wayland Support
    export QT_QPA_PLATFORM=wayland
    export MOZ_ENABLE_WAYLAND=1

    # Wayland Workarounds
    export GBM_BACKEND=nvidia-drm
    export __GLX_VENDOR_LIBRARY_NAME=nvidia
    #export WLR_RENDERER=vulkan
    export WLR_NO_HARDWARE_CURSORS=1
    export XWAYLAND_NO_GLAMOR=1

    export GTK_THEME=Arc

    export GTK_IM_MODULE=fcitx
    export QT_IM_MODULE=fcitx
    export SDL_IM_MODULE=fcitx
    export XMODIFIERS=@im=fcitx

    export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
    devmon &
    exec sway --unsupported-gpu
else
    export LC_MESSAGES="en_US.UTF-8"
fi
