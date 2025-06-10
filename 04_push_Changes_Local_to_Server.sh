#----------------------------------#
#------- set up main branch -------#
#----------------------------------#

git branch #To check the existed branches
	   # *master means that git is on master branch

git branch -M main #To set "main" as default branch, not "master"

# If "main" branch does not exist, use this command
# git checkout -b main
# git branch -M main

#------------------------#
#------- git push -------#
#------------------------#

# Go to codeberg.com, login, then choose a target repository
# On the right side, choose HTTPS and copy that URL_link
# for example: https://codeberg.org/Longistamina/git_practice.git

# Or copy the shh ones (RECOMMENDED for security)
# for example: ssh://git@codeberg.org/Longistamina/git_practice.git

git remote add origin ssh://git@codeberg.org/Longistamina/git_practice.git #add the remote repository to local repository

git remote set-url origin ssh://git@codeberg.org/Longistamina/git_practice.git #use this if want to replace github with codeberg

git push -u origin main



### Check if codeberg has been set as origin
# This command below also to check the current repo that git and codeberg are targeting
git remote -v
#=> origin https://codeberg.org/Longistamina/git_practice.git (fetch)
#=> origin https://codeberg.org/Longistamina/git_practice.git (push)



### If use github as a second platform codeberg github (origin)
git remote add github git@github.com:User_Name/Repository_Name.git
git push -u github main


######## if you prioritize the history of the LOCAL
######## In other words, you want to replace all the history of the remote with the local
git push -u --force origin main
git push -u --force github main
