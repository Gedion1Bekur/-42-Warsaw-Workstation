#!/usr/bin/env bash

# new_module.sh - Creates a new module with virtualenv and linting configs

set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <new_module_name>"
    echo "Example: $0 module_01"
    exit 1
fi

MODULE_NAME="$1"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$SCRIPT_DIR/$MODULE_NAME"
TEMPLATE_DIR="$SCRIPT_DIR/module_00"

echo "🚀 Creating new module: $MODULE_NAME"
mkdir -p "$TARGET_DIR"

# Copy essential configuration files only
echo "📋 Setting up configuration files..."
cp "$TEMPLATE_DIR/.flake8" "$TARGET_DIR/"
cp "$TEMPLATE_DIR/mypy.ini" "$TARGET_DIR/"
cp "$TEMPLATE_DIR/.gitignore" "$TARGET_DIR/"
mkdir -p "$TARGET_DIR/.vscode"
cp "$TEMPLATE_DIR/.vscode/settings.json" "$TARGET_DIR/.vscode/"

# Create virtual environment
echo "🐍 Creating virtual environment (.venv)..."
python3 -m venv "$TARGET_DIR/.venv"

# Install dependencies into .venv
echo "📦 Installing flake8 and mypy..."
"$TARGET_DIR/.venv/bin/pip" install --quiet --upgrade pip
"$TARGET_DIR/.venv/bin/pip" install --quiet flake8 mypy

echo "✅ Module '$MODULE_NAME' ready at: $TARGET_DIR"
echo ""
echo "Next steps:"
echo "  1. Open in VS Code:  code \"$TARGET_DIR\""
echo "  2. Activate env:     cd \"$TARGET_DIR\" && source .venv/bin/activate"
