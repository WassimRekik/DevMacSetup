#!/bin/bash

# Install Homebrew if not already installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Function to check for installation success
check_installation() {
    if [ $? -eq 0 ]; then
        echo "Installation of $1 completed."
    else
        echo "Error installing $1."
        failed_installations+=("$1")
    fi
}

failed_installations=()

# Install packages from file for Homebrew
if [ -f "brew_install_list.txt" ]; then
    while read -r package; do
        brew install "$package"
        check_installation "$package"
    done < "brew_install_list.txt"
fi

# Install packages from file for Cask
if [ -f "cask_install_list.txt" ]; then
    while read -r package; do
        brew install --cask "$package"
        check_installation "$package"
    done < "cask_install_list.txt"
fi

if [ ${#failed_installations[@]} -eq 0 ]; then
    echo "All installations completed successfully!"
else
    echo "Some installations failed:"
    for failed_installation in "${failed_installations[@]}"; do
        echo "- $failed_installation"
    done
fi
