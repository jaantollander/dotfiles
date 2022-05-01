#!/usr/bin/env sh
mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTMODULE/zsh/config/@env.zsh" "$XDG_CONFIG_HOME/zsh/.zshenv"
ln -sf "$DOTMODULE/zsh/config/@login.zsh" "$XDG_CONFIG_HOME/zsh/.zprofile"
ln -sf "$DOTMODULE/zsh/config/@interactive.zsh" "$XDG_CONFIG_HOME/zsh/.zshrc"
ln -sf "$XDG_CONFIG_HOME/zsh/.zshenv" "$HOME/.zshenv"

mkdir -p "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTMODULE/zsh/config/external/bd.zsh" "$XDG_CONFIG_HOME/zsh/external/bd.zsh"
ln -sf "$DOTMODULE/zsh/config/external/completion.zsh" "$XDG_CONFIG_HOME/zsh/external/completion.zsh"
ln -sf "$DOTMODULE/zsh/config/external/cursor_mode.zsh" "$XDG_CONFIG_HOME/zsh/external/cursor_mode"
ln -sf "$DOTMODULE/zsh/config/external/prompt_purification_setup.zsh" "$XDG_CONFIG_HOME/zsh/external/prompt_purification_setup"

# If login shell is not zsh change it to zsh.
if test "$SHELL" = "$(command -v zsh)"; then
    echo "Zsh is already the login shell."
else
    echo "Change the login shell to zsh."
    # Initiates a password prompt.
    chsh -s "$(command -v zsh)"
fi
