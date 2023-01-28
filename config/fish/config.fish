if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
end

set fish_color_autosuggestion   black
set fish_color_cancel           red -r
set fish_color_command          blue
set fish_color_comment          brblack
set fish_color_cwd              green
set fish_color_end              normal
set fish_color_error            red -o
set fish_color_escape           cyan
set fish_color_host             normal
set fish_color_host_remote      cyan
set fish_color_keyword          magenta
set fish_color_normal           normal
set fish_color_operator         magenta
set fish_color_param            brwhite
set fish_color_quote            green
set fish_color_redirection      normal
set fish_color_selection        normal -r
set fish_color_user             normal
set fish_pager_color_background     black
set fish_pager_color_completion     normal
set fish_pager_color_description    yellow
set fish_pager_color_prefix         brwhite -o -u
set fish_pager_color_selected_background    --background=brwhite -d
set fish_pager_color_selected_completion    black -d
set fish_pager_color_selected_description   yellow -d
set fish_pager_color_selected_prefix        black -o -u -d

set fish_user_paths /home/syobon/bin /home/syobon/.cargo/bin /home/syobon/.local/bin
set EDITOR nvim

abbr view 'feh -FZrS filename --version-sort'
abbr vi 'nvim'
abbr vim 'nvim'
abbr logout 'swaymsg exit'
abbr update 'doas emerge --sync; doas emerge -auDN @world; doas emerge -a --depclean'
