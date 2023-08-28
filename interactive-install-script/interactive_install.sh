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

# Prompt user for installation method
echo "Select an installation method:"
echo "1. brew"
echo "2. brew --cask"
read -p "Enter your choice (1/2): " installation_method

case $installation_method in
    1)
        installation_command="brew install"
        ;;
    2)
        installation_command="brew install --cask"
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

# Prompt user to add packages
while true; do
    read -p "Enter the name of the package (or 'done' to finish): " package_name
    if [ "$package_name" == "done" ]; then
        break
    fi

    $installation_command "$package_name"
    check_installation "$package_name"
done

if [ ${#failed_installations[@]} -eq 0 ]; then
    echo "All installations completed successfully!"
else
    echo "Some installations failed:"
    for failed_installation in "${failed_installations[@]}"; do
        echo "- $failed_installation"
    done
fi
