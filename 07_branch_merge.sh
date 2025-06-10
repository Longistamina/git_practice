#-----------------------------------------#
#-------- Branch Merge -------------------#
#-----------------------------------------#

git branch #To check the existed branches
	       # *master means that git is on master branch

git branch -M main #To set "main" as default branch, not "master"

git branch new_branch #create a new branch named new_branch

git checkout modify_branch #switch to branch named modify_branch

git checkout -b branch_1 #Create a new branch new modify_branch and switch to it

git checkout -d new_branch #delete a branch named new_branch

###############
###############

# after conducting any changes or update on another branch (like modify_branch) 
# (remember using "git add" or "git commit")

git checkout modify_branch
git merge main
#Switch to modify_branch, then merge all its change to the main branch

git checkout main
git branch -d modify_branch
#Switch back to main branch
#Then delete the modify_branch when no longer needed