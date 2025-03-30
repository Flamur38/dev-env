#!/usr/bin/env bash

set -e

export DEV_ENV="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 1. Sync dotfiles and configs
echo "📦 Syncing dotfiles and config files..."
"$DEV_ENV/dev-env"

# 2. Run all setup scripts in ./runs
echo "🚀 Running all setup scripts..."
"$DEV_ENV/run"

echo "✅ System bootstrap complete!"

