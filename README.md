![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=for-the-badge&logo=powershell&logoColor=white)
# Remote File Transfer Project

This project contains a PowerShell script that allows you to transfer a file to 16 remote computers in a specified room. The transfer is done through shared folders on the target computers.

## Project Contents
- **transfertFile.ps1** : Main script for transferring files to remote computers.

## Prerequisites
1. **PowerShell** : Make sure you have PowerShell installed on your machine.
2. **Permissions** : Verify that you have the necessary permissions to access shared folders on remote computers.

## Usage

1. **Clone the Project :**
    ```bash
    git clone https://github.com/your-username/project-name.git
    cd project-name
    ```

2. **Run the Script :**
    ```powershell
    .\transfertFile.ps1
    ```

4. **Monitor Execution :**
    - The script will display progress messages during the transfer.
    - Check the shared folder on each remote computer to confirm the file reception.

## Notes
- Ensure that remote computers are accessible on the network.
- In case of transfer failure, check permissions and the availability of shared folders.
- This script is designed to work with PowerShell.

## Contribution
Contributions are welcome! If you have ideas for improvement or find bugs, feel free to open an issue or submit a pull request.
