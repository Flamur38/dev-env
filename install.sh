#!/usr/bin/env bash

set -e

export DEV_ENV="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "📦 Welcome to your Dev Environment Bootstrap!"
echo ""
echo "Choose an installation option:"
echo "  1) Sync dotfiles only"
echo "  2) Run setup scripts only"
echo "  3) Do both (Full install)"
echo "  4) Choose specific components"
echo "  5) Exit"
echo ""

read -rp "Enter your choice [1-5]: " choice

case "$choice" in
  1)
    echo "🗂️  Syncing dotfiles and config files..."
    "$DEV_ENV/dev-env"
    ;;
  2)
    echo "🚀 Running all setup scripts..."
    "$DEV_ENV/run"
    ;;
  3)
    echo "🗂️  Syncing dotfiles and config files..."
    "$DEV_ENV/dev-env"
    echo "🚀 Running all setup scripts..."
    "$DEV_ENV/run"
    ;;
  4)
    echo "🎯 Select a component to install:"
    select script in $(ls "$DEV_ENV/runs"); do
      if [[ -n "$script" ]]; then
        echo "⚙️  Running: $script"
        "$DEV_ENV/run" "$script"
        break
      else
        echo "❌ Invalid choice"
      fi
    done
    ;;
  5)
    echo "👋 Exiting..."
    exit 0
    ;;
  *)
    echo "❌ Invalid input. Exiting."
    exit 1
    ;;
esac

echo ""
echo "✅ Done!"

