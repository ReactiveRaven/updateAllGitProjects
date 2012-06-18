updateAllGitProjects
====================

If you have a directory structure similar to this:

    ~/projects/PROJECT_X
    ~/projects/PROJECT_Y
    ~/projects/PROJECT_Z

UAGP can update them all with remote changes with one command. Clone it in your projects directory:

    ~/projects/PROJECT_X
    ~/projects/PROJECT_Y
    ~/projects/PROJECT_Z
    ~/projects/UAGP

and link the shell script into the projects directory
    
    ~/projects/PROJECT_X
    ~/projects/PROJECT_Y
    ~/projects/PROJECT_Z
    ~/projects/UAGP
    ~/projects/updateAllGitProjects.sh  ->  ~/projects/UAGP/updateAllGitProjects.sh

and run it.

UAGP will fetch all changes on all branches, then 'pull' into the currently checked out branch.

This way, if a large number of files are changed on master, you won't be sat around waiting when it comes time to merge your feature-branch back into master.
