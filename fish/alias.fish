# System
alias c="code ."
alias ci="code"
alias v="vim"
alias e="explorer.exe"
alias vim="nvim"
alias l="eza -l --git --icons --no-user --group-directories-first"
alias ll="ls -ghG --group-directories-first"
alias r="ranger"
alias rs="./manage.py runserver 0.0.0.0:8000"
alias we="curl wttr.in/\?format=\"\n%l+\nNow:+%t+(%f)+/+%c%p\nSun:+%D+/+%d\n\""
alias gs="git status"
alias bat="batcat"
alias !="cd ~ && vf deactivate && nvm use system"

abbr --add dj ./manage.py runserver 0.0.0.0:8000

# Workon manager
function wo
    if test (count $argv) -ne 1
        echo wo: Expected one arguments, the project\'s name.
        return 1
    end

    eval "wo_"$argv[1]
end

# Projects
alias wo_taicare="cd ~/projects/taicare && nvm use"
alias wo_bobs="cd ~/projects/bobs_portal"
alias wo_rir="cd ~/projects/bobs-rir"
alias wo_qr="cd ~/projects/qrhub"
alias wo_spa="cd ~/projects/spa_reloaded"

# Projects autocomplete suggestions
complete --command wo --exclusive --condition __fish_use_subcommand --arguments taicare --description "tai.care"
complete --command wo --exclusive --condition __fish_use_subcommand --arguments bobs --description "Bob's"
complete --command wo --exclusive --condition __fish_use_subcommand --arguments rir --description "Bob's Rock in Rio Promo"
complete --command wo --exclusive --condition __fish_use_subcommand --arguments qr --description "QRhub"
complete --command wo --exclusive --condition __fish_use_subcommand --arguments spa --description "SPA Reloaded"
