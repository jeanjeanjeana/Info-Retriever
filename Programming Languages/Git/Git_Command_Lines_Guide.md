# Command lines to use GitBash and an online Git repository

Command Line | Utility
------------ | -------------
git add + “file name + extension” | Add to index (need to use this command line to commit)
git add . | Add all the files in the index
git commit –m + “commit description” | Commit with message
git commit –am + “commit description” | Commit and add to index (if file has just been modified)
git revert + sha code of commit | Create a new commit instead of the previous one
git commit -- amend –m “new message” | Change message of last commit (only if commit isn’t pushed)
git resert --hard | Delete all the non-committed modification
git clone  + link from github | (SSH or HTTPS link) Copy an already existing repository to your computer
git push + origin master | Synchronize (send) your local modification with you online master branch
git pull + origin master | Retrieve locally the latest changes from your online repository
git log | Shows all the commit made on your current located branch
git branch + branch name | Create a new branch
git checkout + branch name | Change branch
git branch | See all the branches and see on which branch you are
git checkout –b + branch name | Create and change branch at the same time
git merge + branch name | Merge a branch to another
git blame + file name.extension | List all modifications made on a file
git show + sha code | Show why the modification has been mad
git stash  | Put aside your current changes
git stash pop | Recover the changes you had set aside (with “git stash”)
git init | Create an empty Git repository or reinitialize an existing one
git status | Get the status of you current branch (committed or not …)
git config --global user.name "Sam Smith" | Configure the author name be used with your commits
git config --global user.email sam@example.com | Configure the author email address to be used with your commits.

*Sha code*: ID of every commit.

*Example of git clone*: 
>  git clone https://github.com/facebook/react.git  

(you can try this command line, you will get a JavaScript library created by Facebook).

----
## Order to push a file to an online github
Once you have created an online Git repository if you have created or modified a file you have to follow the following order to be able to send you modification to your online repository: 
* 1: Add file to index with git add
* 2: Commit your file with git commit –am (“-a” only if you have done some modification in the file and you add it to the index once with “git add”)
* 3: Send the modification to you git repository with git push origin master (if you use HTTPS you will have to enter your git login and password)

----
## HTTPS or SSH ?
Concerning the 2 ways (SSH or HHTPS) to retrieve your online repository to your local computer :
* SHH is more safe but more complicated to implement
* HTTPS is very easy to implement, just get the link from github

If you want to use SSH follow this [link](https://help.github.com/articles/connecting-to-github-with-ssh/)

----
## Conflict problems ? 
It can happen that during a merge you face a conflict:

![alt text](https://raw.githubusercontent.com/jeanjeanjeana/EclipseJavaProject/master/imagescreen.png "console screen for conflict")

To resolve this conflict, you have to open the concerned file (with vim or your favorite text editor) select the lines you want and delete the lines you don’t want, add the file to the index and commit it with only “git commit “. Then you can modifie the commit message and if you don’t want, just tape “:x “.

----
## Some useful links
* [Download Git](https://git-for-windows.github.io/)
* [French tutorial about git](https://openclassrooms.com/courses/gerer-son-code-avec-git-et-github/qu-est-ce-que-versionner-son-code) (I based myself on this link)
* [Online github Website](https://github.com/)
* [Some command lines in French](https://gist.github.com/aquelito/8596717)
* [Some other command lines in English](https://confluence.atlassian.com/bitbucketserver/basic-git-commands-776639767.html)
* [Command lines in French](http://rogerdudler.github.io/git-guide/index.fr.html)

----
## Other
This document is a basic help to use git. Feel free to update or modify this document if you feel the need =) .

###### *Author: WITTMANN Jean*
