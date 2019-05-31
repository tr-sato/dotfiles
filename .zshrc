export PATH=/usr/local/bin:$PATH

source ~/.zplug/init.zsh

zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "mafredri/zsh-async", from:github
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug "RobSis/zsh-completion-generator", if:"GENCOMPL_FPATH=$HOME/.zsh/complete"
zplug "Tarrasch/zsh-functional" # each map filter fold
zplug "willghatch/zsh-hooks"
zplug "unixorn/warhol.plugin.zsh" # ansi
zplug "mollifier/zload"
zplug "b4b4r07/enhancd", use:"init.sh"
zplug "zsh-users/zsh-syntax-highlighting"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
