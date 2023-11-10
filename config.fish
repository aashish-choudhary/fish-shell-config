set fish_greeting ''
# theme
# set -g theme_color_scheme terminal-dark
# set -g fish_prompt_pwd_dir_length 1
# set -g theme_display_user yes
# set -g theme_hide_hostname yes
# set -g theme_hostname always

#if status is-interactive
    # Commands to run in interactive sessions can go here
#end

alias nb "npm run build"
alias nbs "npm run b"
alias nbc "npm run build:client"
alias ns "npm run s"
alias nc "npm run c"
alias nrd "npm run resetdb"
alias nsd "npm run setupdb"
alias nbsq "npm run bsq"
alias gp "git push -u origin HEAD"
alias gpn "git push -u origin HEAD --no-verify"
alias gpf "git push -f -u origin HEAD"
alias gpfn "git push -f -u origin HEAD --no-verify"
alias gcsm "git commit -s -m"

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

#Android
set -gx ANDROID_HOME ~/Android/Sdk $PATH
set -gx PATH $ANDROID_HOME/emulator $PATH
set -gx PATH $ANDROID_HOME/platform-tools $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# pnpm
set -gx PNPM_HOME "~/.local/share/pnpm" $PATH

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

pyenv init - | source
starship init fish | source
