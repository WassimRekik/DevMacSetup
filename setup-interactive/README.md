
# Interactive Installation Script

This interactive Bash script allows you to install various development tools and applications on macOS using Homebrew. The script lets you choose between `brew` and `brew --cask` installations and allows you to add packages interactively.

## Prerequisites

1. **Homebrew**: If you don't have Homebrew installed, the script will install it for you. However, if you want to install Homebrew manually, visit [Homebrew's website](https://brew.sh/) for installation instructions.

## Usage

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

5. Follow the prompts to select an installation method and add packages.

6. The script will attempt to install the selected packages using the chosen installation method.

7. After completion, the script will display a summary of successful and failed installations.

## Example Installation Methods

### Method 1: Using `brew` Installation

1. Select `brew` as the installation method.
2. Input package names one by one when prompted.
3. To finish adding packages, enter "done".
4. The script will install the specified packages using `brew`.

### Method 2: Using `brew --cask` Installation

1. Select `brew --cask` as the installation method.
2. Input package names one by one when prompted.
3. To finish adding packages, enter "done".
4. The script will install the specified packages using `brew --cask`.

## Notes

- The script provides an interactive way to choose between `brew` and `brew --cask` installations.
- You can input the names of packages one by one. Enter "done" to finish adding packages.
- Failed installations will be listed at the end of the script's output.
- Please ensure you have the necessary permissions and backups before running the script.
- Software versions and installation methods may change over time, so it's recommended to verify the latest installation instructions.

## Disclaimer

Use this script at your own risk. I am not responsible for any damages caused by using this script.



