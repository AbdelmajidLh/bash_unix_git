#====================================================================
#     Commandes de base unix 
#====================================================================
# Auteur @Abdelmajid EL HOU - Data analyst & scientist - PhD

#===========================
# CHERCHER LES FICHIERS
#===========================
# Afficher les fichiers contenant le terme x
grep -rnw '/path/to/somewhere/' -e 'pattern'
find . -name thisfile.txt

# Afficher les fichiers/dossiers cachés
ls -a

#===========================
# TRANSFORMATION DE FICHIERS
#===========================
# vérifier les retours chariot dans un fichier
file scriptname.txt

#convertir un fichier windows au format linux
## un seul fichier
sed -i -e 's/\r$//' scriptname.sh
dos2unix scriptname.sh
## tous les fichiers d'un dossier
find /chemin/mon_dossier/ -type f -print0 | xargs -0 dos2unix --

#===========================
# MANIPULER LES FICHIERS
#===========================
# Obtenir les valeurs uniques dans une colonne (ex. colonne 5)
awk -F';' '{print $5}' file.txt | sort | uniq

# compter le nombre de colonnes dans un fichier
awk -F';' '{print NF; exit}' file.txt

#===========================
# BOUCLES
#===========================
# boucle for
for VARIABLE in file1 file2 file3
do
    command1 on $VARIABLE
    command2
    commandN
done

#===========================
# BASES DE DONNEES
#===========================
# Créer une copie sauvegarde (dump) d'une base de données mySQL
mysqldump -host <hote_name_de_la_base> -u <user> --port 39000 -p <proj> > my_backup.mySQL