git fetch origin #fetch gets all the change history of a tracked branch/repo.

git merge origin/main #merge our current branch (main) with origin/main

git pull origin #A combination of fetch and merge. 
                #It is used to pull all changes from a remote repository into the branch you are working on.

git pull origin --allow-unrelated-histories #To allow pull even if local and remote have unrelated histories

#-----------------#
#-----------------#

# If your local branch and the remote branch have diverged 
# (meaning both have new commits that the other doesn’t have) 
# Git wants you to decide how to merge those changes.

git pull --no-rebase origin 
#Git will create a merge commit combining both histories.
#Should use this

git pull --rebase origin 
#Git will replay your local commits on top of the remote branch, creating a linear history.

git pull --ff-only origin 
#Git will only update if your local branch is behind the remote (no divergence). 
#If there's a divergence, it will refuse to pull.
