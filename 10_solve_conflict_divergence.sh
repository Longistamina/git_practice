
####### After identifying the difference or the conflict point (via file 09), follow some possible solutions #######


#-----------------------------------------------------------------#
#------------ Merge Strategy - Non-linear history ----------------#
#-----------------------------------------------------------------#

# Remote:  A -- B -- C -- D -- E (colleague pushed commits D and E)
# Local:   A -- B -- C -- F -- G (you made commits F and G)

git pull --no-rebase origin main #Can be other branch different from "main"
git pull --no-rebase github main #Can be other branch different from "main"

# with the flat --no-rebase:
# Git will first fetch the latest changes from the main branch of the origin remote repository
# Git will then merge the fetched changes into your current local branch using a merge strategy rather than a rebase
# Meaning if there are diverging changes between your local branch and the remote, 
#         this will create a merge commit to integrate the changes


############# Illustration: ##############

#            Before: divergence (conflict)
# Remote:  A -- B -- C -- D -- E (colleague pushed commits D and E)
# Local:   A -- B -- C -- F -- G (you made commits F and G)

#            After: using --no-rebase
# Remote:  A -- B -- C -- D -- E
# Local:   A -- B -- C -- F -- G -- H (merge commit)
#                     \            /
#                      D -------- E

#===> This approach maintains the original commit IDs and creates a clear history 
#     showing when and where remote changes were incorporated into your local branch, 
#     though it may result in a non-linear commit history compared to rebasing.


#--------------------------------------------------------------------------------------#
#------------- Prioritize Remote - Overwrite local history by remote one --------------#
#--------------------------------------------------------------------------------------#

######## if you want to replace all the history of the local with the remote, do as following

# Fetch the latest changes from the remote
git fetch origin
git fetch github

# Then, reset your local branch to the remote branch, discarding local commits and changes
git reset --hard origin/main
git reset --hard github/main

# Now can safely pull
git pull origin main
git pull github main


######### Illustration: ###########

#            Before: local branch has diverged from multiple remotes
# Remote origin/main:  A -- B -- C -- D -- E
# Local main branch:   A -- B -- C -- F -- G

#            After: git fetch origin
# Remote origin/main:  A -- B -- C -- D -- E (fetched, stored locally)
# Local main branch:   A -- B -- C -- F -- G (unchanged)

#            After: git reset --hard origin/main
# Local main branch:   A -- B -- C -- D -- E (matches origin/main)
# Working directory and index are also reset to match


#-----------------------------------------------------------------------------------#
#------------ Rebasing Strategy - Prioritize Local - Linear history ----------------#
#-----------------------------------------------------------------------------------#

# Remote:  A -- B -- C -- D -- E (colleague pushed commits D and E)
# Local:   A -- B -- C -- F -- G (you made commits F and G)

git pull --rebase origin main 
git pull --rebase github main 

# with the flag --rebase:
# git will fetch remote changes (commits D and E)
# then temporarily set aside your local commits (F and G are stored temporarily)
# then apply remote changes to your branch (your branch now points to commit E)
# and finally, reapply your local commits one by one on top of the fetched changes

# NOTE: after accomplishing this option, remember to PUSH BACK to the remote to SYNCHRONIZE the history


############# Illustration: ##############

#            Before: divergence (conflict)
# Remote:  A -- B -- C -- D -- E (colleague pushed commits D and E)
# Local:   A -- B -- C -- F -- G (you made commits F and G)

#             After: using --rebase
# Local:   A -- B -- C -- D -- E -- F' -- G' (linear history)

# ===> Notice that your commits F and G become F' and G' - they are new commits with different commit IDs, 
#      even though they contain the same changes


# NOTE: after accomplishing this option, remember to PUSH BACK to the remote to SYNCHRONIZE the history
# Remote:  A -- B -- C -- D -- E -- F' -- G' (synchronized after pushing back to remote)
# Local:   A -- B -- C -- D -- E -- F' -- G' (synchronized after pushing back to remote)


#-------------------------------------------------------------------------------------#
#------------- Prioritize Local - Overwrite remote history by local one --------------#
#-------------------------------------------------------------------------------------#

######## if you want to replace all the history of the remote with the local, do as following

git push -u --force origin main
git push -u --force github main


########## Illustration: ##########

#            Before: conflicting histories
# Remote:  A -- B -- C -- X -- Y (remote main branch on github)
# Local:   A -- B -- C -- F -- G (your local main branch)

#             After: git push -u --force github main
# Remote:  A -- B -- C -- F -- G (remote history overwritten)
# Local:   A -- B -- C -- F -- G (now tracking github/main)


#-----------------------------------------------------#
#------------ Allow unrelated history ----------------#
#-----------------------------------------------------#

git pull --allow-unrelated-histories origin main
git pull --allow-unrelated-histories github main

# What this command would do:
# Fetch the latest changes from the main branch of the github remote repository
# Allow merging despite the branches having unrelated histories (no common ancestor commits)
# Create a merge commit that combines both independent project histories

# When This Is Needed? This flag is essential when:
# You've created a local repository independently and are connecting it to an existing remote repository
# The .git directory was corrupted or deleted, making Git unaware of your local history
# You're combining two separate projects that started independently


############# Illustration: ################

#            Before: unrelated histories (no common ancestor)
# Remote:  X -- Y -- Z (remote repository history)
# Local:   A -- B -- C (local repository history)

#             After: using --allow-unrelated-histories
# Local:   A -- B -- C ---------- M (merge commit)
#                    \           /
#                     X -- Y -- Z


# The --allow-unrelated-histories flag forces Git to create merge commit M 
# that has two parent commits (C and Z) from completely separate project histories.
# After the merge, your local repository contains the full history of both independent projects, 
# creating a single unified timeline where both development paths are preserved.
# This scenario typically happens when you initialize a local repository independently 
# and later try to connect it to an existing remote repository, or when combining two separate projects that started from scratch
