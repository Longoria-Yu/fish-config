if status is-interactive
    # Commands to run in interactive sessions can go here
    eval "$(/opt/homebrew/bin/brew shellenv)"

    alias gh="env -u GITHUB_TOKEN gh $1"

    export GOPATH="$HOME/go"
    export GOBIN="$GOPATH/bin"
    export PATH="$GOBIN:$PATH"
    export PATH="$HOME/.gotools:$PATH"

    export GCPPATH="$HOME/Downloads/google-cloud-sdk/bin"
    export PATH="$GCPPATH:$PATH"
    export USE_GKE_GCLOUD_AUTH_PLUGIN=True
    export ISTIOPATH="$HOME/istio-1.26.1/bin"
    export PATH="$ISTIOPATH:$PATH"

    export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

    alias vim="nvim"
    alias k="kubectl"
    alias fzf="fzf --preview 'bat --color=always {}'"
    alias fvim="fzf -m --preview 'bat --color=always {}' --bind='enter:execute(nvim {})'"
    alias python="python3"

    # this isn't necessary when using Neovim in an appropriate terminal, 
    # but it will help when running Neovim inside of tmux.
    export TERM="xterm-256color"

    export GOLANG_PROTOBUF_REGISTRATION_CONFLICT="warn"

    export __LOCAL_TEST="1"
    
    # for testing purposes
    export TMP_SSE_DIRECTORY="$HOME/Learning/tmp"

    # Set up fzf key bindings
    fzf --fish | source

    # Add mirrord completions
    source $HOME/.config/mirrord/mirrord-completions.fish

    starship init fish | source

end
