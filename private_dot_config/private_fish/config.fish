eval (starship init fish)
source ~/.asdf/asdf.fish
eval (sdkman export fish)
# source ~/.config/fish/gpg-agent.fish
# source ~/.cargo/env

set -x GPG_TTY (tty)
set -x _JAVA_AWT_WM_NONREPARENTING 1
set -x QT_QPA_PLATFORM "xcb"
set -x QT_WAYLAND_DISABLE_WINDOWDECORATION 1
set -x EDITOR vim
set -x GOPATH $HOME/go
set -x BROWSER firefox-developer-edition
set -x GOPRIVATE gitlab.com/venini42,github.com/matteojoliveau/monogo-poc
set -x CC /bin/clang
set -x CXX /bin/clang++
set -x fish_user_paths (yarn global bin) $HOME/.pub-cache/bin $HOME/.cargo/bin 
set -x ERL_AFLAGS "-kernel shell_history enabled"
set -x DRONE_SERVER https://ci.k8s-dev.life-tech.xyz
set -x DRONE_TOKEN eUlY1kerUsi2stoPFycwKn2uqioTuq2r

alias hk="heroku"
alias tf="terraform"
alias k="kubectl"
alias ktx="kubectx"
alias kns="kubens"
alias kbe="kubie"
alias kless="kubeless"
alias knodes="kubectl get nodes --show-labels | awk -f ~/Software/tests/nodes.awk"
alias isodate="date -u +'%Y-%m-%dT%H:%M:%SZ'"
alias g="git"
alias ls="exa"
alias lg="lazygit"
alias rng="ranger"
alias cp="cp -a --reflink=auto"
alias rebar="rebar3"
alias :q="exit"
alias compose="docker-compose"
alias clip="xclip -sel clip"
alias nethack="telnet nethack.alt.org"
alias aws_switch="set -x AWS_PROFILE"
alias ed="emacs -nw"
alias find="fd"
alias cat="bat"
alias cal="cal -m"
alias reset_bg="eval (~/.fehbg)"
alias kwskadmin="kubectl exec -it openwhisk-wskadmin -n openwhisk -- wskadmin"
alias code.="code ."
alias sudo="doas"
alias cm="chezmoi"

#rvm default

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/matteo/.config/yarn/global/node_modules/tabtab/.completions/serverless.fish ]; and . /home/matteo/.config/yarn/global/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/matteo/.config/yarn/global/node_modules/tabtab/.completions/sls.fish ]; and . /home/matteo/.config/yarn/global/node_modules/tabtab/.completions/sls.fish
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /home/matteo/.config/yarn/global/node_modules/tabtab/.completions/slss.fish ]; and . /home/matteo/.config/yarn/global/node_modules/tabtab/.completions/slss.fish

