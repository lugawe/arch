set fish_greeting ""

abbr --add ad "alacritty & disown"

for file in $__fish_config_dir/conf.d/*.fish
    source $file
end

if status is-interactive

    if not set -q DISABLE_TMUX; and not set -q TMUX
        tmux attach -t main &>/dev/null || tmux new -s main &>/dev/null
    end

    starship init fish | source

end
