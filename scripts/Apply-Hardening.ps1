param (
    [Parameter(Mandatory=$true)]
    [string]$SecretPassword,
    
    [string]$Environment = "Production",
    
    # Nouvelle règle : Par défaut, le redémarrage est désactivé ($false)
    [bool]$AllowRestart = $false
)

Write-Output "Début de l'application du durcissement de sécurité en environnement : $Environment"
Write-Output "Configuration des accès privilégiés effectuée avec succès."

# --- LOGIQUE DE VÉRIFICATION DU REDÉMARRAGE ---
# On simule ici que les modifications de sécurité nécessitent un reboot du serveur
$BesoinRedemarrage = $true 

if ($BesoinRedemarrage) {
    if ($AllowRestart -eq $true) {
        Write-Output "⚠️ L'approbation a été validée dans le pipeline. Redémarrage du serveur en cours..."
        # En production réelle, la commande serait : Restart-Computer -Force
    } else {
        # Si le pipeline s'exécute sans l'autorisation explicite, on bloque tout pour protéger la production !
        Write-Error "[BLOCAGE DE SÉCURITÉ] : Le serveur requiert un redémarrage, mais aucune approbation explicite (AllowRestart) n'a été fournie. Arrêt immédiat pour éviter une coupure non planifiée."
        exit 1
    }
}
