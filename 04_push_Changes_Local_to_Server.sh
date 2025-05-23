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

git remote set-url origin https://codeberg.org/your-username/your-repo.git #use this if want to replace github with codeberg

git remote add origin URL_link #add the remote repository to local repository

git push -u origin main


### Check if codeberg has been set as origin
# This command below also to check the current repo that git and codeberg are targeting
git remote -v
#=> origin https://codeberg.org/Longistamina/git_practice.git (fetch)
#=> origin https://codeberg.org/Longistamina/git_practice.git (push)

### If use codeberg as a second platform beside github (origin)
git remote add codeberg https://codeberg.org/your-username/your-repo.git
git push -u codeberg main
