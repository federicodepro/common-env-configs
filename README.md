Agregar esta línea en zshrc

# Customize to your needs...
# Alias definitions.
[[ -s ~/.aliases.zsh ]] && . ~/.aliases.zsh


Agregar módulo git en zpreztorc
# Set the Prezto modules to load (browse modules).
# The order matters.
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'git' \ **
  'utility' \
  'completion' \
  'prompt'

Programas necesarios:
chrome
Brew
git
tree
wget
GVM
iterm
1password
RazorSQL
NetworkConnect
Divvy