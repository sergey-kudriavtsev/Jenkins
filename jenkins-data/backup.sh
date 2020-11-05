#! /bin/sh

# Move into the Jenkins master directory
cd $JENKINS_HOME

# Add all new, changed and deleted files
# Unwanted files must be listed in .gitignore
git add --all

# Commit, and ignore if the commit is empty
git commit -m "Jenkins config change" || true

# Push changes outside of the Jenkins directory
git push