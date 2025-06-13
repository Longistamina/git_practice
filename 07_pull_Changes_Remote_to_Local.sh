# pull: is to update all changes from remote repo in codeberg or github to local repo

# origin: the remote repo (on Github, Codeberg, Gitlab, ...)
# origin main: the branch "main" of the remote origin
# origin master: the branch "master" of the remote origin
# origin other_branch: the branch "other_branch" of the remote origin

# origin here is codeberg

git fetch origin main #fetch gets all the change history of a tracked repo/branch
git fetch github main
# If you used "git push -u origin main" before, now just need "git fetch origin"

git status # check the history you have fetched from the remote

git merge origin/main #merge the history and changes in the "main" branch of the remote origin to local
git merge github/main

#############

git pull origin main #A combination of fetch and merge. 
                     #Pull everything from the "main" branch of remote origin to local
git pull github main

# If you have set "main" as the upstream branch via "git push -u origin main"
# => when pulling from this "main" branch, just need to: 
#         git pull origin
#         git pull github

#############

git pull origin --allow-unrelated-histories main #To allow pull even if local and remote have unrelated histories
git pull github --allow-unrelated-histories main


#---------------------------------------------------#
#---------- git pull: handle conflicts -------------#
#---------------------------------------------------#

# If your local branch and the remote branch have diverged 
# (meaning both have new commits that the others do not have) 
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
#===> NOTE: after accomplishing this option, remember to PUSH BACK to the remote to SYNCHRONIZE the history

git pull --ff-only origin main
git pull --ff-only github main 
#Can be other branch different from "main"
#Git will only update if your local branch is behind the remote (no divergence). 
#If there's a divergence, it will refuse to pull.


######## if you prioritize the history of the REMOTE (otherwise, see file 05_push)
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
