
# Installation Script

This Bash script automates the installation of various development tools and applications on macOS using Homebrew.

## Prerequisites

1. **Homebrew**: If you don't have Homebrew installed, the script will install it for you. However, if you want to install Homebrew manually, visit [Homebrew's website](https://brew.sh/) for installation instructions.

## Usage

1. Clone the repository or download the script file to your local machine.

2. Make the script executable:
   
   ```bash
   chmod +x install_script.sh
   ```

3. Create two files, `brew_install_list.txt` and `cask_install_list.txt`, in the same directory as the script.

4. Add the names of packages you want to install to the respective files:
   
   - `brew_install_list.txt`: List the names of Homebrew packages, each on a new line.
   - `cask_install_list.txt`: List the names of `cask` packages, each on a new line.

5. Run the script:

   ```bash
   ./install_script.sh
   ```

6. The script will read the package names from the text files and install the specified packages using Homebrew and `cask`.

7. After completion, the script will display a summary of successful and failed installations.

## Example Package Lists

### brew_install_list.txt
```
node
@angular/cli
express-generator
k6
```

### cask_install_list.txt
```
visual-studio-code
postman
google-chrome
```

## Notes

- Failed installations will be listed at the end of the script's output.
- You can customize the package lists in the text files according to your requirements.
- Please ensure you have the necessary permissions and backups before running the script.
- Software versions and installation methods may change over time, so it's recommended to verify the latest installation instructions.

## Disclaimer

Use this script at your own risk. I am not responsible for any damages caused by using this script.

---

Feel free to modify this README to suit your project and add any additional information that you think would be helpful for users.

