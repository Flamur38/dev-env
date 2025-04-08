# ~/personal/dev-env/utils.sh

clean_and_copy() {
    local src="$1"
    local dst="$2"

    if [[ -e "$dst" ]]; then
        echo "🧹 Removing existing: $dst"
        rm -rf "$dst"
    fi

    echo "📁 Copying: $src -> $dst"
    cp -r "$src" "$dst"
}

install_package() {
    local pkg="$1"
    if ! dpkg -s "$pkg" &> /dev/null; then
        echo "📦 Installing $pkg..."
        sudo apt install -y "$pkg"
    else
        echo "✅ $pkg already installed."
    fi
}

log_step() {
    echo -e "\n🔸 $1\n"
}

# New function 🔥
ensure_command_installed() {
    local cmd="$1"
    local package="$2"

    if ! command -v "$cmd" &> /dev/null; then
        echo "📦 Command '$cmd' not found. Installing package '$package'..."
        sudo apt install -y "$package"
    else
        echo "✅ Command '$cmd' already installed."
    fi
}

