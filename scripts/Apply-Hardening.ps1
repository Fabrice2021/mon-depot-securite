param (
    [Parameter(Mandatory=$true)]
    [string]$SecretPassword,
    [string]$Environment = "Production"
)

Write-Output "Début de l'application du durcissement de sécurité en environnement : $Environment"
# Simulation d'une tâche d'administration sécurisée
Write-Output "Configuration des accès privilégiés effectuée avec succès."