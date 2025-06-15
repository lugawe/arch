set fish_greeting ""

abbr --add ad "alacritty & disown"

for file in $__fish_config_dir/conf.d/*.fish
    source $file
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    if not set -q TMUX
        exec tmux
    end
end

set -x STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"
starship init fish | source
