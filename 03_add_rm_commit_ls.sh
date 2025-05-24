# After making changes in the local repo, use "git status" to check the changes (files in red color)
# These files are in TRACKING STAGE, meaning these files are waiting to be added and committed.

#-------------------------------------#
#----------- git add -----------------#
#-------------------------------------#
git add file_name1.tail file_name2.tail ...
#Add files to staging status, wait for commit

git add --all
#Add all existing files to staging status

git add folder_name/
#Add a folder with all its files
#If the folder has been initiated with "git init" and have hidden folder .git => it will prompt error
# => must delete the .git folder

git status 
#check the status again
#the added files are now in green color
#they are now in STAGING STATUS, waiting to be committed

#-----------------------------------#
#----------- git rm ----------------#
#-----------------------------------#

git rm --cached file.tail
#Remove a file from tracking stage without deleting files on local repo

git rm -r --cached .
#Remove all files in current repo "." from tracking stage


#---------------------------------------#
#-------- Git commit -------------------#
#---------------------------------------#

git commit -m "message"
#Commit a change has been made with a message

git status #check again after committing

#----------------------------------------------#
#-------- (optional) git ls -------------------#
#----------------------------------------------#

git ls-tree -r HEAD #Show tree structure of repository

git ls-files #Show all files of repository
