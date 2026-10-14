#!/usr/bin/env bash

# clean_cache.sh - Global cache and unwanted temporary file cleaner
# Cleans all modules inside /home/gbekur/Python_0-5/

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${1:-$SCRIPT_DIR}"

echo "🧹 Cleaning cache and unwanted files across: $TARGET_DIR"

# Remove cache directories (excluding .venv)
find "$TARGET_DIR" -type d \( -name "__pycache__" -o -name ".mypy_cache" -o -name ".pytest_cache" -o -name ".idea" \) -not -path "*/.venv/*" -exec rm -rf {} + 2>/dev/null

# Remove compiled bytecode and temporary files (excluding .venv)
find "$TARGET_DIR" -type f \( -name "*.pyc" -o -name "*.pyo" -o -name "*~" -o -name ".*.swp" -o -name ".DS_Store" \) -not -path "*/.venv/*" -delete 2>/dev/null

echo "✨ All cache and temporary files cleaned successfully!"
