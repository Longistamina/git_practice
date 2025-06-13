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

git pull --ff-only origin main
git pull --ff-only github main 
#Can be other branch different from "main"
#Git will only update if your local branch is behind the remote (no divergence). 
#If there's a divergence, it will refuse to pull.


#---------------------------------------------------#
#---------- git pull: handle conflicts -------------#
#---------------------------------------------------#

# If your local branch and the remote branch have diverged 
# (meaning both have new commits that the others do not have) 
# Git wants you to decide the way to handle this conflictual situation

# => read file 09 and then file 10