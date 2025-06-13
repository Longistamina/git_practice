# If your local branch and the remote branch have diverged 
# (meaning both have new commits that the others do not have) 
# Git wants you to decide the way to handle this conflictual situation

# ===> Use below commands to examine the difference between remote and local histories

# origin here is codeberg

# 1) Fetch the latest remote updates (to ensure your remote tracking branches are up to date):
git fetch origin main # or other branch_name
git fetch github main # or other branch_name


# 2) View the commits that are in your local branch but not in the remote branch (i.e., the "ahead" commits):
git log origin/main..main # or other branch_name
git log github/main..main # or other branch_name
# If output shows nothing => no commits ahead


# 3) Alternatively, to see the actual code differences between your local branch and the remote branch:
git diff origin/main..main # or other branch_name
git diff github/main..main # or other branch_name
# If output shows nothing => no commits difference


# 4) To see how many commits your branch is ahead or behind the remote branch
git rev-list --left-right --count origin/main...main # or other branch_name
git rev-list --left-right --count github/main...main # or other branch_name
# The ... (triple-dot) notation in git rev-list calculates the symmetric difference between the two branches, 
# showing commits reachable from either branch but not from both
# Output: 0 0
# ------> indicates no commits exist exclusively on either side; the branches have identical commit histories


# 5) Use show to see the local and remote history in detailed
git show main          # show the history of LOCAL "main" branch (can be other branch_name)
git show origin/main   # show the history of REMOTE origin (codeberg) "main" branch (can be other branch_name)
git show github/main   # show the history of REMOTE github            "main" branch (can be other branch_name)


####### After identifying the difference or the conflict point, read file 10 to for some possible solutions #######