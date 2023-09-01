#!/bin/bash

# Specify the number of contributors and commits per contributor
num_contributors=10
commits_per_contributor=5

# Loop through contributors
for ((i = 1; i <= num_contributors; i++)); do
    contributor_name="Contributor$i"
    contributor_email="contributor$i@example.com"

    # Set the contributor's Git config for this loop iteration
    git config user.name "$contributor_name"
    git config user.email "$contributor_email"

    # Perform commits for this contributor
    for ((j = 1; j <= commits_per_contributor; j++)); do
        touch "contribution_$i_commit_$j.txt"
        git add "contribution_$i_commit_$j.txt"
        git commit -m "Commit $j by $contributor_name"
    done
done

# Reset the Git config to your own name and email (or the desired default)
git config user.name "armanayvazyan"
git config user.email "arman.ayvazyan@jetbrains.com"

