git fetch origin #fetch gets all the change history of a tracked branch/repo.

git merge origin/main #merge our current branch (main) with origin/main

git pull origin #A combination of fetch and merge. 
                #It is used to pull all changes from a remote repository into the branch you are working on.

git pull origin --allow-unrelated-histories #To allow pull even if local and remote have unrelated histories