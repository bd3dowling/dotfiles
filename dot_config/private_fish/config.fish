if status is-interactive
    # Commands to run in interactive sessions can go here
end

# --- Homebrew environment ---
eval (/opt/homebrew/bin/brew shellenv)

# --- OrbStack integration ---
source ~/.orbstack/shell/init.fish 2>/dev/null

# --- XDG base dirs ---
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME  $HOME/.cache
set -gx XDG_DATA_HOME   $HOME/.local/share

# --- less history in XDG ---
set -gx LESSHISTFILE "$XDG_CACHE_HOME/less/history"
mkdir -p (dirname $LESSHISTFILE)

# --- Python startup in XDG ---
set -gx PYTHONSTARTUP "$XDG_CONFIG_HOME/python/startup.py"
mkdir -p (dirname $PYTHONSTARTUP)

# --- iPython in XDG ---
set -gx IPYTHONDIR "$XDG_CONFIG_HOME/ipython"
mkdir -p $IPYTHONDIR

# --- Dagster in XDG ---
set -gx DAGSTER_HOME "$XDG_DATA_HOME/dagster"
mkdir -p $DAGSTER_HOME

# --- vim cache path ---
mkdir -p "$XDG_CACHE_HOME/vim"

# --- marimo config path ---
mkdir -p "$XDG_CONFIG_HOME/marimo"

# --- starship prompt ---
starship init fish | source

