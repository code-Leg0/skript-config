#!/bin/sh
#Création du start.sh
touch start.sh
echo "#!/bin/sh" > start.sh
echo "java -Xmx4G -Xms4G -jar server.jar" > start.sh

#Telechargement du serveur
echo Téléchargement du serveur...
wget https://cdn.getbukkit.org/spigot/spigot-1.8.8-R0.1-SNAPSHOT-latest.jar
mv *.jar server.jar
chmod +x server.jar
echo Serveur téléchargé...

#Dossier plugins et fichier eula
mkdir plugins
touch eula.txt
echo "eula=true" > eula.txt

cd plugins

#Telechargement de Skript
echo Téléchargement de Skript...
wget https://skripttools.net/dl/Skript+2.2-dev36.jar
echo Skript téléchargé...

#Telechargement de WorldEdit
echo Téléchargement de WorldEdit
wget https://dev.bukkit.org/projects/worldedit/files/2597538/download
echo WorldEdit téléchargé...