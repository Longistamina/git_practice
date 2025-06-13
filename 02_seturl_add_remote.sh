# Go to codeberg.com, login, then choose a target repository
# On the right side, choose HTTPS and copy that URL_link
# for example: https://codeberg.org/Longistamina/git_practice.git

# Or copy the shh ones (RECOMMENDED for security)
# for example: ssh://git@codeberg.org/Longistamina/git_practice.git

# Do the same thing for github and get this ssh address: git@github.com:user_name/repository_name.git


#--------------------------------------------------------------------#
#---------------- codeberg as main remote server --------------------#
#--------------------------------------------------------------------#

git remote set-url origin ssh://git@codeberg.org/user_name/repository_name.git # Use SSH address to set the codeberg repo as origin (main remote server)

git remote add github git@github.com:user_name/repository_name.git             # Use SSH address set the github repo as secondary remote server

git remote -v # display the origin and other remote servers
### output ###
# github	git@github.com:user_name/repository_name.git (fetch)
# github	git@github.com:user_name/repository_name.git.git (push)
# origin	ssh://git@codeberg.org/user_name/repository_name.git.git (fetch)
# origin	ssh://git@codeberg.org/user_name/repository_name.git.git (push)


#------------------------------------------------------------------#
#---------------- github as main remote server --------------------#
#------------------------------------------------------------------#

git remote set-url origin git@github.com:user_name/repository_name.git           # Use SSH address to set the codeberg repo as origin (main remote server)

git remote add codeberg ssh://git@codeberg.org/user_name/repository_name.git     # Use SSH address set the github repo as secondary remote server

git remote -v # display the origin and other remote servers