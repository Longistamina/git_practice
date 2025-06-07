# pull: is to update all changes from codeberg or github to local repo

# origin: the remote repo (on Github, Codeberg, Gitlab, ...)
# origin main: the branch "main" of the remote origin
# origin master: the branch "master" of the remote origin
# origin other_branch: the branch "other_branch" of the remote origin

# origin here is codeberg

git fetch origin #fetch gets all the change history of a tracked branch/repo.
git fetch github

git merge origin/main #merge the "main" branch of remote origin to local
git merge github/main

git pull origin main #A combination of fetch and merge. 
                     #Pull everything from the "main" branch of remote origin to local
git pull github main

git pull origin --allow-unrelated-histories main #To allow pull even if local and remote have unrelated histories
git pull github --allow-unrelated-histories main

#-----------------#
#-----------------#

# If your local branch and the remote branch have diverged 
# (meaning both have new commits that the other doesn’t have) 
# Git wants you to decide how to merge those changes.

git pull --no-rebase origin main
git pull --no-rebase github main
#Can be other branch different from "main"
#Git will create a merge commit combining both histories.
#Your local commits and the remote commits coexist, and the merge commit records the integration point.
#Your local history remains intact; commits are not reordered or rewritten.
#Should use this

git pull --rebase origin main 
git pull --rebase github main 
#Can be other branch different from "main"
#Git will replay your local commits on top of the remote branch, creating a linear history.
#Clean

git pull --ff-only origin main
git pull --ff-only github main 
#Can be other branch different from "main"
#Git will only update if your local branch is behind the remote (no divergence). 
#If there's a divergence, it will refuse to pull.


######## if you prioritize the history of the REMOTE
######## In other words, you want to replace all the history of the local with the remote

# Fetch the latest changes from the remote
git fetch origin
git fetch github

# Then, reset your local branch to the remote branch, discarding local commits and changes
git reset --hard origin/main
git reset --hard github/main

# Now can safely pull
git pull origin main
git pull github main
