# push: is to update all changes from local repo to remote repo on codeberg or github

# origin: the remote repo (on Github, Codeberg, Gitlab, ...)
# origin main: the branch "main" of the remote origin
# origin master: the branch "master" of the remote origin
# origin other_branch: the branch "other_branch" of the remote origin

# origin here is codeberg

#----------------------------------#
#------- set up main branch -------#
#----------------------------------#

git branch # Check the current branch (the one that has asterisk, for example: *master, *main, *dev, ....)
           # If the current branch is "master", then do the following command
           
git branch -M main #To rename the CURRENT branch "master" to branch "main"

#------------------------#
#------- git push -------#
#------------------------#

git remote -v # check all current remote servers

# First time push
git push -u origin main # -u means --set-upstream, helps simplify the next push or pull
git push -u github main

# Next time push
git push origin # As you have set branch "main" as the upstream branch, now you don't have to specify the branch anymore (in case your target branch is still "main")
git push github
## => NOTE: if your target branch is another one, then: git push origin other_branch (or git push github other_branch)
##          because if you don't specify the branch, git will take the upstream "main" branch as default target for pushing


#-----------------------------------------#
#------- git push: handle conflict -------#
#-----------------------------------------#

# If your local branch and the remote branch have diverged 
# (meaning both have new commits that the others do not have) 
# Git wants you to decide how to merge those changes.

######## if you prioritize the history of the LOCAL (otherwise, see file 06_pull)
######## In other words, you want to replace all the history of the remote with the local

git push -u --force origin main
git push -u --force github main
