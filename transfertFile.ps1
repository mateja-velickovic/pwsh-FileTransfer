# Declaration des variables
$nbrChoices = @(1, 2, 3)
$choices =
@(""),
@("Application de transfert de fichiers en reseau"),
@(""),
@(" [1] Transferer un fichier"),
@(" [2] Creer une arboresence de classe"),
@(" [3] Quitter le programme"),
@("")

# Affichage de la consigne
$choices

# Tant que le nombre correspond aux choix disponibles
do {

    $userChoice = Read-Host "> "

} while ($nbrChoices -notcontains $userChoice)

# Choix de l'utilisateur
switch ($userChoice) {

    1 {
        # Entree de la racine de l'arboresence, du fichier voulu, ainsi que du numero de la classe
        $path = Read-Host "Entrez la racine de votre arboresence [Ex: E:\INF]"
        $classroom = Read-Host "Entrez le numero de la salle de classe [Ex: N512]"
        $fileTransfert = Read-Host "Entrez le chemin direct vers le fichier que vous souhaitez transferer"
        $numberStudents = Read-Host "Entrez le nombre de postes (PC)"
        $fileName = Get-ChildItem $fileTransfert | Select-Object Name


        # Verification de l'existance du fichier que l'utilisateur veut transmettre
        if (!(Test-Path $fileTransfert)) {
            Write-Warning "Le fichier que vous souhaitez transferer est introuvable !"
            Exit
        }
        
        $strDest = ""
        for ($i = 1; $i -le $numberStudents; $i++) {
            if ($i -lt 10) {
                # Repertoire de transfert n < 10
                $strDest = "$path\DATA\MASTER\INF-$classroom-M80$i"
            }
            else {
                # Repertoire de transfert n > 10
                $strDest = "$path\DATA\MASTER\INF-$classroom-M8$i"
            }
        
            if (Test-Path $strDest) {
                Copy-Item $fileTransfert $strDest -recurse -force
                
                # Succes
                Write-Host "$strDest\$($fileName.Name) => OK" -Foreground Green
            }
            else {
                # Message d'erreur si repertoire invalide
                Write-Warning "Le repertoire : $strDest est introuvable => Pas de copie !"
            }
        } 
    }

    2 {
        # Entree de la racine de l'arboresence ainsi que du numero de la classe
        $path = Read-Host "Entrez la racine de votre arboresence [Ex: E:\INF]"
        $classroom = Read-Host "Entrez le numero de la salle de classe [Ex: N512]"
        $numberStudents = Read-Host "Entrez le nombre de postes (PC)"  

        for ($i = 1; $i -le $numberStudents; $i++) {

            if ($i -lt 10) {
                New-item "$path\INF-$classroom-M80$i" -Force -ItemType Directory | Out-Null

                # Succes
                Write-Host "$path\$classroom-M80$i => OK" -Foreground Green
            }

            else {
                New-item "$path\INF-$classroom-M8$i" -Force -ItemType Directory | Out-Null

                # Succes
                Write-Host "$path\$classroom-M8$i => OK" -Foreground Green
            }

        }
    }

    3 {
        Exit
    }

}

