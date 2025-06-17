set fish_greeting ""

abbr --add ad "alacritty & disown"

for file in $__fish_config_dir/conf.d/*.fish
    source $file
end

if status is-interactive

    if not set -q DISABLE_TMUX; and not set -q TMUX
        tmux has-session -t main &>/dev/null
        or tmux new -s main &>/dev/null
        and test (tmux list-clients -t main &>/dev/null | wc -l) -eq 0
        and tmux attach -t main &>/dev/null
    end

    starship init fish | source

end
