# Ensure essential system paths are present
if not contains /usr/local/bin $PATH
    set -gx PATH /usr/local/bin $PATH
end

if not contains /usr/bin $PATH
    set -gx PATH /usr/bin $PATH
end

if not contains /bin $PATH
    set -gx PATH /bin $PATH
end

# Add Go's path
set -gx PATH $PATH /usr/local/go/bin

# Add Go's tool path
set -gx PATH $PATH $HOME/go/bin

# Add Rust's path
set -gx PATH $HOME/.cargo/bin $PATH

# Specific settings for macOS
if test (uname) = "Darwin"
    set -gx PATH /opt/homebrew/bin $PATH
end

set -gx EDITOR "nvim"
alias python=python3

# For less key stroke
alias v="nvim ."
alias vi="nvim ."
alias vim="nvim ."

# Force TMUX
if status is-interactive
    and not set -q TMUX
    exec tmux
end


# Specific settings for Linux
if test (uname) = "Linux"
    alias bat=batcat
    alias cat=batcat
end

# fzf fish key bind func as terminal cmd
set fzf_dir_opts --bind "enter:execute($EDITOR {} &> /dev/tty)"
alias f=_fzf_search_directory
alias r=_fzf_search_history
alias g=_fzf_search_git_status

alias ls="exa -1 --icons -T -L=1 -a"

# Set up minikube for Docker without Docker Desktop to MacOS
if type -q minikube
    eval (minikube docker-env)
end

# Use docker buildx
set -gx DOCKER_BUILDKIT 1


