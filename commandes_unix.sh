#====================================================================
#     Commandes de base unix 
#====================================================================
# Auteur @Abdelmajid EL HOU - Data analyst & scientist - PhD


# pwd (Print Working Directory): Cette commande affiche le chemin du répertoire actuel.
pwd

# cd (Change Directory): Cette commande permet de changer de répertoire.
cd /home/dossier

# ls (List): Cette commande permet de lister les fichiers et les répertoires dans le répertoire actuel.
ls

# Afficher les fichiers/dossiers cachés
ls -a

# mkdir (Make Directory): Cette commande permet de créer un nouveau répertoire.
mkdir new_folder/

# cp (Copy): Cette commande permet de copier un fichier ou un répertoire d'un emplacement à un autre.
cp file.txt file_copy.txt

# mv (Move): Cette commande permet de déplacer un fichier ou un répertoire d'un emplacement à un autre.
mv file.txt /home/dossier

# rm (Remove): Cette commande permet de supprimer un fichier ou un répertoire.
rm file.txt

# cat (Concatenate): Cette commande permet d'afficher le contenu d'un fichier
cat file.txt


#===========================
# CHERCHER LES FICHIERS
#===========================
# Afficher les fichiers contenant le terme x
grep -rnw '/path/to/somewhere/' -e 'pattern'
find . -name thisfile.txt

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
