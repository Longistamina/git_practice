# pull: is to update all changes from codeberg or github to local repo

# origin: the remote repo (on Github, Codeberg, Gitlab, ...)
# origin main: the branch "main" of the remote origin
# origin master: the branch "master" of the remote origin
# origin other_branch: the branch "other_branch" of the remote origin

git fetch origin #fetch gets all the change history of a tracked branch/repo.

git merge origin/main #merge the "main" branch of remote origin to local

git pull origin main #A combination of fetch and merge. 
                     #Pull everything from the "main" branch of remote origin to local

git pull origin --allow-unrelated-histories main #To allow pull even if local and remote have unrelated histories

#-----------------#
#-----------------#

# If your local branch and the remote branch have diverged 
# (meaning both have new commits that the other doesn’t have) 
# Git wants you to decide how to merge those changes.

git pull --no-rebase origin main #Can be other branch different from "main"
#Git will create a merge commit combining both histories.
#Should use this

git pull --rebase origin main #Can be other branch different from "main"
#Git will replay your local commits on top of the remote branch, creating a linear history.

git pull --ff-only origin main #Can be other branch different from "main"
#Git will only update if your local branch is behind the remote (no divergence). 
#If there's a divergence, it will refuse to pull.
