#!/bin/sh
#We can use this script to delete a repository on GitHub.

#You can type the name of the repository and the name of the owner.
# read -p "Enter the name of the repository: " repo
# read -p "Enter the name of his owner: " owner

#Or pass the name of the repository and the name of the owner as arguments.

#TOKEN_API is the API token of the user

curl \
  -X DELETE \
  -H "Authorization: token TOKEN_API" \
  https://api.github.com/repos/$1/$2

echo "Repository deleted"