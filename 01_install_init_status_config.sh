#----------------------------------------------#
#---------------- install git -----------------#
#----------------------------------------------#

### For ubuntu
sudo apt update
sudo apt upgrade
sudo apt install git #install git

### For fedora
sudo dnf upgrade
sudo dnf upgrade --refresh # (optional)
sudo dnf install git       # install git
sudo dnf install git-all   # (optional) install git with all tools

# verify install
git --version #check the git version


#-------------------------------------------------------#
#----------------- init and status ---------------------#
#-------------------------------------------------------#

cd wanted_repository #Go to target repo to activate git

git init
#Initiate git at a wanted repo

git status
#Check status of current repo


#------------------------------------------------------#
#---------------- config user and email ---------------#
#------------------------------------------------------#

git config --global user.name "Longistamina"
git config --global user.email "dophamthelong03@gmail.com"
#Add config for git
#Use the username and email of codeberg or github account
#Must do this step before initiating git
