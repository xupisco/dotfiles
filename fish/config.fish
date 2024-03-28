set -g fish_greeting
set -gx EDITOR nvim
set -gx EXA_ICON_SPACING 2

set PATH $HOME/.local/bin $PATH
set PATH /usr/local/go/bin $PATH
set PATH /home/linuxbrew/.linuxbrew/bin $PATH

# Remove underline on paths
set -Ux fish_color_valid_path

set -Ux VIRTUALFISH_DEFAULT_PYTHON python3
set -Ux VIRTUALFISH_HOME ~/.venvs

# Pure
set pure_enable_single_line_prompt false
set pure_symbol_prompt '>'
set pure_show_system_time false

# Tide
set --global tide_left_prompt_prefix ''
set --global tide_character_icon ' '$tide_character_icon
set --global tide_left_prompt_items pwd python git newline character
set --global tide_right_prompt_items node time

# Brew
set -Ux HOMEBREW_AUTO_UPDATE_SECS 604800
set -Ux HOMEBREW_NO_ENV_HINTS 1
set -Ux HOMEBREW_NO_AUTO_UPDATE 1

# FZF
set --export FZF_DEFAULT_OPTS --height=40% --layout=reverse --border=none

set -x GPG_TTY (tty)
ssh-add -l > /dev/null || ssh-add

# Aliases and Abbrs
if [ -f $HOME/.config/fish/alias.fish ]
    source $HOME/.config/fish/alias.fish
end

# Fun?
function fish_greeting
    echo "Let's get shit done!"
end

function transient_prompt_func
    if test $transient_pipestatus[-1] -eq 0
        printf (set_color green)' '
    else
        printf (set_color red)' '
    end
end


# Init starship
starship init fish | source

