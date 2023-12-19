![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=for-the-badge&logo=powershell&logoColor=white)
# Remote File Transfer Project

This project contains a PowerShell script that allows you to transfer a file to 16 remote computers in a specified room. The transfer is done through shared folders on the target computers.

## Project Contents
- **transfertFile.ps1** : Main script which allows you to create a class tree as well as transfer files into it

## Prerequisites
1. **PowerShell** : Make sure you have PowerShell installed on your machine.
2. **Permissions** : Verify that you have the necessary permissions to access shared folders on remote computers.

## Usage

1. **Clone the Project :**
    ```bash
    git clone https://github.com/mateja-velickovic/pwsh-fileTransfer.git
    cd pwsh-fileTransfer
    ```

2. **Run the Script :**
    ```powershell
    .\transfertFile.ps1
    ```

4. **Monitor Execution :**
    - The script will display progress messages during the transfer.
    - Check the shared folder on each computer to confirm the file reception.

## Examples

### 1. File transfer
```
PS C:\Users\matvelickov\Desktop> .\transfertFile.ps1

Application de transfert de fichiers en reseau

 [1] Transferer un fichier
 [2] Creer une arboresence de classe
 [3] Quitter le programme

> : 1

Entrez la racine de votre arboresence [Ex: E:\INF]: C:\Users\matvelickov\Desktop\test
Entrez le numero de la salle de classe [Ex: N512]: N512
Entrez le chemin direct vers le fichier que vous souhaitez transferer: C:\Users\matvelickov\Desktop\download.png
Entrez le nombre de postes (PC): 16

C:\Users\matvelickov\Desktop\test\INF-N512-M801\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M802\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M803\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M804\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M805\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M806\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M807\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M808\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M809\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M810\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M811\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M812\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M813\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M814\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M815\download.png => OK
C:\Users\matvelickov\Desktop\test\INF-N512-M816\download.png => OK
```

### 2. Tree creation
```
PS C:\Users\matvelickov\Desktop> .\transfertFile.ps1

Application de transfert de fichiers en reseau

 [1] Transferer un fichier
 [2] Creer une arboresence de classe
 [3] Quitter le programme

> : 2

Entrez la racine de votre arboresence [Ex: E:\INF]: C:\Users\matvelickov\Desktop\test
Entrez le numero de la salle de classe [Ex: N512]: N512
Entrez le nombre de postes (PC): 16

C:\Users\matvelickov\Desktop\test\N512-M801 => OK
C:\Users\matvelickov\Desktop\test\N512-M802 => OK
C:\Users\matvelickov\Desktop\test\N512-M803 => OK
C:\Users\matvelickov\Desktop\test\N512-M804 => OK
C:\Users\matvelickov\Desktop\test\N512-M805 => OK
C:\Users\matvelickov\Desktop\test\N512-M806 => OK
C:\Users\matvelickov\Desktop\test\N512-M807 => OK
C:\Users\matvelickov\Desktop\test\N512-M808 => OK
C:\Users\matvelickov\Desktop\test\N512-M809 => OK
C:\Users\matvelickov\Desktop\test\N512-M810 => OK
C:\Users\matvelickov\Desktop\test\N512-M811 => OK
C:\Users\matvelickov\Desktop\test\N512-M812 => OK
C:\Users\matvelickov\Desktop\test\N512-M813 => OK
C:\Users\matvelickov\Desktop\test\N512-M814 => OK
C:\Users\matvelickov\Desktop\test\N512-M815 => OK
C:\Users\matvelickov\Desktop\test\N512-M816 => OK
```

## Notes
- Ensure that remote computers are accessible on the network.
- In case of transfer failure, check permissions and the availability of shared folders.
- This script is designed to work with PowerShell.

## Contribution
Contributions are welcome! If you have ideas for improvement or find bugs, feel free to open an issue or submit a pull request.
