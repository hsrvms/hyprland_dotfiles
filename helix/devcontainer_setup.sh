#!/bin/bash

# USAGE:
# # Copy this file into .devcontainer folder and make it executable
# # change "postCreateCommand": "bash /workspace/.devcontainer/devcontainer_setup.sh"



set -e

# Download and extract Helix
echo "Installing Helix..."
mkdir -p /tmp/helix ~/.local/bin ~/.config/helix
wget -qO /tmp/helix.tar.xz https://github.com/helix-editor/helix/releases/download/25.07.1/helix-25.07.1-x86_64-linux.tar.xz
tar -xf /tmp/helix.tar.xz -C /tmp/helix --strip-components=1

# Move the executable and runtime to user directories
mv /tmp/helix/hx ~/.local/bin/hx
mv /tmp/helix/runtime ~/.config/helix/runtime
wget -qO ~/.config/helix/config.toml https://raw.githubusercontent.com/hsrvms/hyprland_dotfiles/main/helix/config.toml

# Clean up temp files
rm -rf /tmp/helix /tmp/helix.tar.xz

# Run your existing post-create command
uv tool install pre-commit # This is for ERPNext

# Language specific installation
echo "Installing Python tools..."
uv tool install ruff

# Install Pyright (Frappe images include npm by default)
echo "Installing Pyright..."
npm install -g pyright typescript typescript-language-server vscode-langservers-extracted
