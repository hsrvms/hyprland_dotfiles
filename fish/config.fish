source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
# function fish_greeting
#     fortune
# end

abbr -a fzf "fzf --ansi"
abbr -a hxf 'helix $(fzf --ansi -m --preview="bat --color=always {}")'
abbr -a cs "gh cs"
abbr -a dc devcontainer

alias hx helix
# alias zed zeditor

alias qutebrowser="env QT_QPA_PLATFORM=xcb qutebrowser"
