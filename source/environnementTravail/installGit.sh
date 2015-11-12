#!/bin/sh



# 3ème Partie : git et git-flow
###############################################
# Installation de git et de git-flow
#-----------------------------------------------
echo "# 3ème Partie : git et git-flow"
echo "###############################################"
echo "# Installation de git et de git-flow"
echo "#"
echo "# http://nvie.com/posts/a-successful-git-branching-model/"
echo "# http://danielkummer.github.io/git-flow-cheatsheet/"
echo "# http://danielkummer.github.io/git-flow-cheatsheet/index.fr_FR.html"
echo "#"
echo "# sudo apt-get install git git-flow"
sudo apt-get install git git-flow

echo "# Création d'un fichier .gitconfig"
echo '# git config --global user.email "frederic.garel@gmail.com"'
echo '# git config --global user.name "Frédéric Garel"'
echo "#"
echo "#"
echo "# Utilisation d'un fichier .gitconfig existant"
echo "# Recopie du fichier .gitconfig"
echo "#"
cp /home/fred/Documents/install/source/environnementTravail/.gitconfig /home/fred/
echo "#"
echo "# Quelques rappels sur git"
echo "#"
echo "# "
echo "#--------------------------------------------------"
echo "# Cette documentation n'aborde donc pas le cas du clonage."
echo "# Si on clone un dépot, le dépot distant est automatiquement"
echo "# ajouté sous le nom origin."
echo "#"
echo "# Cloner les dépots travail, report, perso"
echo "#   cd ~/Documents/"
echo "#   git clone https://github.com/fgarel/report.git"
echo "#"
echo "#--------------------------------------------------"
echo "# Voici la documentation pour ajouter un projet existant"
echo "# vers un dépot public github"
echo "#"
echo "# https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/#platform-linux"
echo "#"
echo "#--------------------------------------------------"
echo "#"
echo "# 1."
echo "# Create a new repository on GitHub. To avoid errors, do not initialize the new"
echo "# repository with README, license, or gitignore files. You can add these files"
echo "# after your project has been pushed to GitHub."
echo "#"
echo "# 2-4."
echo "# Initialize the local directory as a Git repository."
echo "# Initialisation d'un depot local ~/Documents/install"
echo "#   cd ~/Documents/install"
echo "#   git init"
echo "#   git flow init"
echo "# Pour basculer d'une branche à l'autre"
echo "#   gcm = git checkout master"
echo "#   gcd = git checkout develop"
echo "#"
echo "# 5."
echo "# Add the files in your new local repository. This stages them for the first commit."
echo "#   git add ."
echo "#   # Ads the files in the local repository and stages them for commit. To"
echo "#     unstage a file, use 'git reset HEAD YOUR-FILE'."
echo "#"
echo "# 6."
echo "# Commit the files that you've staged in your local repository."
echo '#   git commit -m "First commit"'
echo "#   # Commits the tracked changes and prepares them to be pushed to a remote"
echo "#     repository. To remove this commit and modify the file, use 'git reset'"
echo "#     --soft HEAD~1' and commit and add the file again."
echo "#"
echo "# 7-8."
echo "# Add the URL for the remote repository"
echo "# Ajout d'un dépot distant"
echo "#   git remote add origin https://github.com/fgarel/install.git"
echo "#   # Sets the new remote"
echo "#   git remote -v"
echo "#   # Verifies the new remote URL"
echo "#"
echo "# 9."
echo "# Push the changes in your local repository to GitHub."
echo "#   git push origin master"
echo "#   # Pushes the changes in your local repository up to the remote repository"
echo "#     you specified as the origin"
echo "#"
echo "#--------------------------------------------------"
echo "# create a new repository on the command line"
echo '#   echo "# install" >> README.md'
echo "#   git init"
echo "#   git add README.md"
echo '#   git commit -m "first commit"'
echo "#   git remote add origin https://github.com/fgarel/install.git"
echo "#   git push -u origin master"
echo "#--------------------------------------------------"
echo "# push an existing repository from the command line"
echo "#   git remote add origin https://github.com/fgarel/install.git"
echo "#   git push -u origin master"
echo "#--------------------------------------------------"
echo ""

