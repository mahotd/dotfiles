#!/usr/bin/env bash
set -euo pipefail

CONFIG_DIR="$(cd "$(dirname "$0")" && pwd)"

FILES=(
  .zshrc
  .zsh_plugins.txt
)

for f in "${FILES[@]}"; do
  ln -sf "$CONFIG_DIR/$f" "$HOME/$f"
  echo "linked: ~/$f -> $CONFIG_DIR/$f"
done

echo ""
echo "Create a private aliases file at ~/.config/.zsh_aliases_private:"
echo "touch ~/.config/.zsh_aliases_private"
echo "and add your private aliases there."