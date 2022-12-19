#====================================================================
#     Commandes de base Git bash
#====================================================================

# clonner un répertoire 
git clone lien_url.git

# créer une branche / release (ex. feature/Nom_branche_feature)
git branch 'feature/Nom_branche_feature'

# aller sur la branche
git checkout feature/Nom_branche_feature

# voir le status des modifications
git status

# ajouter les fichiers modifiés
git add --all 
git add <fichier_modifié>

# ajouter un commit
git commit -m "message du commit"

# pusher les modifications sur le serveur à distant (repository)
git push
