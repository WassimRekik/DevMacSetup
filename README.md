
# Usage of Installation Scripts

This repository provides two installation scripts for automating the installation of development tools and applications on macOS using Homebrew. Choose the script that best fits your needs:

1. [TXT Installation Script](#txt-installation-script)
2. [Interactive Installation Script](#interactive-installation-script)

## TXT Installation Script

The **TXT Installation Script** is a non-interactive script that installs a predefined list of tools and applications. It is suitable for a hands-off installation process. You can modify the txt files to customize the list of packages to install.

### Prerequisites

1. **Homebrew**: If you don't have Homebrew installed, the script will install it for you. However, if you want to install Homebrew manually, visit [Homebrew's website](https://brew.sh/) for installation instructions.

### Usage

1. Clone the repository or download the script file to your local machine.

2. Make the script executable:

   ```bash
   chmod +x install_script.sh
   ```

3. Update a file named `brew_install_list.txt` and `cask_install_list.txt` in the same directory as the script.

4. Add the names of packages you want to install to the respective files:

   **brew_install_list.txt**:
   ```
   node
   @angular/cli
   express-generator
   k6
   ```

   **cask_install_list.txt**:
   ```
   visual-studio-code
   postman
   google-chrome
   ```

5. Open a terminal and navigate to the directory containing the script.

6. Run the script:

   ```bash
   ./install_script.sh
   ```

7. The script will read the package names from the text files and install the specified packages using Homebrew and `brew --cask`.

8. After completion, the script will display a summary of successful and failed installations.

## Interactive Installation Script

The **Interactive Installation Script** is an interactive script that allows you to choose between `brew` and `brew --cask` installations add search for packages. You can add packages interactively, making it easy to customize your installation.

### Prerequisites

1. **Homebrew**: If you don't have Homebrew installed, the script will install it for you. However, if you want to install Homebrew manually, visit [Homebrew's website](https://brew.sh/) for installation instructions.

### Usage

1. Clone the repository or download the script file to your local machine.

2. Make the script executable:

   ```bash
   chmod +x interactive_install.sh
   ```

3. Open a terminal and navigate to the directory containing the script.

4. Run the script:

   ```bash
   ./interactive_install.sh
   ```

5. Follow the prompts to select an installation method and add packages or search for packages.

6. The script will attempt to install the selected packages using the chosen installation method.

7. After completion, the script will display a summary of successful and failed installations.

## Notes

- The **Installation Script** is suitable for a predefined installation process.
- The **Interactive Installation Script** is suitable for customizing your installation interactively.
- Failed installations will be listed at the end of the script's output.
- Please ensure you have the necessary permissions and backups before running the script.
- Software versions and installation methods may change over time, so it's recommended to verify the latest installation instructions.

## Disclaimer

Use these scripts at your own risk. I am not responsible for any damages caused by using these scripts.

