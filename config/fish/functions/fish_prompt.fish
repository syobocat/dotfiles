function fish_prompt --description 'Write out the prompt'
    printf "[%s@%s %s%s%s]%%" (whoami) (hostname) (set_color green) (prompt_pwd) (set_color normal)
end

function fish_right_prompt --description 'Write out the right prompt'
    set_color red & echo "[$status] "
end
