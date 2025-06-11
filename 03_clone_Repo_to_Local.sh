#clone: use this once when you want to copy a repository from GitHub (or any remote repo) to your local machine for the first time. 
#       It creates a new folder with the project and downloads all files.

# Go to codeberg.com, login, then choose a target repository
# On the right side, choose HTTPS and copy that URL_link
# for example: https://codeberg.org/Longistamina/git_practice.git

# Or copy the shh ones (RECOMMENDED for security)
# for example: ssh://git@codeberg.org/Longistamina/git_practice.git

# Do the same thing for github and get this ssh address: git@github.com:user_name/repository_name.git

#--------------------------------------------------------------------#
#---------------- codeberg as main remote server --------------------#
#--------------------------------------------------------------------#

git clone ssh://git@codeberg.org/user_name/repository_name.git

cd /path/to/repository_name

git remote set-url origin ssh://git@codeberg.org/user_name/repository_name.git # Use SSH address to set the codeberg repo as origin (main remote server)

git remote add github git@github.com:user_name/repository_name.git             # Use SSH address set the github repo as secondary remote server

git remote -v # display the origin and other remote servers
### output ###
# github	git@github.com:user_name/repository_name.git (fetch)
# github	git@github.com:user_name/repository_name.git.git (push)
# origin	ssh://git@codeberg.org/user_name/repository_name.git.git (fetch)
# origin	ssh://git@codeberg.org/user_name/repository_name.git.git (push)

git branch # Check the current branch (the one that has asterisk, for example: *master, *main, *dev, ....)
           # If the current branch is "master", then do the following command
           
git branch -M main #To rename the CURRENT branch "master" to branch "main"

# make some changes
# add changes to staging phase and commit (see file 04)
# push from local to remote (see file 05)
# pull from remote to local (see file 06)


#------------------------------------------------------------------#
#---------------- github as main remote server --------------------#
#------------------------------------------------------------------#

git clone git@github.com:user_name/repository_name.git

cd /path/to/repository_name

git remote set-url origin git@github.com:user_name/repository_name.git           # Use SSH address to set the codeberg repo as origin (main remote server)

git remote add codeberg ssh://git@codeberg.org/user_name/repository_name.git     # Use SSH address set the github repo as secondary remote server

git remote -v # display the origin and other remote servers

git branch # Check the current branch (the one that has asterisk, for example: *master, *main, *dev, ....)
           # If the current branch is "master", then do the following command
           
git branch -M main #To rename the CURRENT branch "master" to branch "main"

# make some changes
# add changes to staging phase and commit (see file 04)
# push from local to remote (see file 05)
# pull from remote to local (see file 06)

