source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
# function fish_greeting
#     fortune
# end

abbr -a fzf "fzf --ansi"
abbr -a hxf 'helix $(fzf --ansi -m --preview="bat --color=always {}")'
abbr -a cs "gh cs"

# alias hx helix
# alias zed zeditor
