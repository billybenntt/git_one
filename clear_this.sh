#!/bin/bash

# Step 1: Check for current branch
current_branch=$(git branch --show-current)

# Step 2: Create a new orphan branch
git checkout --orphan new-initial-branch

# Step 3: Add all files and commit
git add -A
git commit -m "Initial commit"

# Step 4: Delete the old branch
git branch -D "$current_branch"

# Step 5: Rename the new branch to main
git branch -m master

# Step 6: Force push to remote repository
git push -f origin master

echo "All commits and history have been cleared. A new initial commit has been created and pushed to the remote repository."
