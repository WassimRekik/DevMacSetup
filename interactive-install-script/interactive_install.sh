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

while true; do
    echo "Select an action:"
    echo "1. Install a package with 'brew'"
    echo "2. Install a package with 'brew --cask'"
    echo "3. Search for a package"
    echo "4. Quit"
    read -p "Enter your choice (1/2/3/4): " choice

    case $choice in
        1)
            installation_method="brew install"
            ;;
        2)
            installation_method="brew install --cask"
            ;;
        3)
            installation_method="search"
            ;;
        4)
            echo "Exiting."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a valid option."
            continue
            ;;
    esac

    # Prompt user to add packages
    while true; do
        read -p "Enter the name of the package (or 'done' to finish): " package_name
        if [ "$package_name" == "done" ]; then
            break
        fi

        if [ "$choice" == "3" ]; then
            echo "Searching for package: $package_name"
            brew search "$package_name"
            continue
        fi

        # Install the package using the chosen installation method
        if [ "$choice" != "3" ]; then
            $installation_method "$package_name"
            check_installation "$package_name"
        fi
    done

    echo "Actions:"
    echo "1. Choose another action"
    echo "2. Quit"
    read -p "Enter your choice (1/2): " action_choice

    case $action_choice in
        1)
            continue
            ;;
        2)
            echo "Exiting."
            exit 0
            ;;
        *)
            echo "Invalid choice. Exiting."
            exit 1
            ;;
    esac
done
