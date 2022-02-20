#!/bin/sh
#You can use this script to create a repository on GitHub.

#You can type the name of the repository and the name of the owner.
# read -p "Enter the name of the repository: " repo
# read -p "Enter the name of his owner: " owner

#Or pass the name of the repository and the name of the owner as arguments.

#TOKEN_API is the API token of the user

curl \
  -X POST \
  -H "Authorization: token TOKEN_API" \
  https://api.github.com/user/repos \
  -d '{"name":"'$2'"}'
mkdir $2
cd $2
git init
echo "Repository created">README.md
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:$1/$2.git
git push -u origin master