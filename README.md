# Git
```commandline
sudo dnf install git
```

REMOTE REPO 'origin' <-> LOCAL
```commandline
git clone https://github.com/github_user/repo_name.git
cd repo_name

# local -> remote
mkdir -p $HOME/repo_name
cd $HOME/repo_name
git init
git remote add origin https://github.com/github_user/repo_name.git

# after making changes : 
git add '*'  #ADD TO STAGE
git commit -m 'Add all local files' 
git push -u origin master

git show HEAD //latest commit log

git checkout HEAD filename //discard changes and restore back to the last commit
git checkout -- filename  //does the same thing as 'checkout HEAD'

git add scene-2.txt
git reset HEAD scene-2.txt //unstage file from the staging area using
// It does not discard file changes from the working directory, 
// it just removes them from the staging area.

git reset commit_SHA //undo commits

git reset commit_b_SHA
//Before reset :  a-b-c-d-HEAD
//After reset :  a-b-HEAD

git diff HEAD
git diff --staged
git reset octofamily/octodog.txt    #unstaging
git checkout -- octocat.txt
git branch clean_up

git branch //check what branch is it currently

git branch bugFix // create new branch
git checkout bugFix //switch to new branch

git checkout -b bugFix //create & switch to new branch at the same time
// you can make commits on the new branch that have no impact on master.

git checkout master
git merge bugFix
// merge the new branch bugFix(giver) into master(receiver) branch
// no merge conflict since master had not changed

git checkout bugFix
git merge master //merge master into bugFix

// Since bugFix was an ancestor of master, 
// git didn't have to do any work; it simply just moved bugFix 
// to the same commit master was attached to.

// Now all the commits are the same color, 
// which means each branch contains all the work in the repository!


// merge conflict : 
//  <<<<<<< HEAD
//  master version of line
//  =======
//  fencing version of line
//  >>>>>>> fencing

git add conflict_file_name
git commit -m 'merge conflict resolved'

git branch -d branch_name //delete branch after merged to 'master' branch

//  Imagine that you’re a science teacher, developing some quizzes with Sally, 
//  another teacher in the school. You are using Git to manage the project.
//  To collaborate followings are required :
//  A complete replica of the project on your own computers
//  A way to keep track of and review each other’s work
//  Access to a definitive project version

//  You can accomplish all of this by using remotes. 
//  A remote is a shared Git repository that allows multiple 
//  collaborators to work on the same Git project from different locations
//  Collaborators work on the project independently, 
//  and merge changes together when they are ready to do so.

//  Sally has created the remote repository, science-quizzes 
//  in the directory curriculum, which teachers on the school’s shared network 
//  have access to. In order to get your own replica of science-quizzes, 
//  you’ll need to clone it with:
//  remote_location = file_path or web address(url)
git clone remote_location clone_name
git clone science-quizzes my-quizzes
cd my-quizzes

//  list of a Git project’s remotes with the command:
git remote -v


//  Sally changed the science-quizzes Git project in some way. 
//  If so, your clone will no longer be up-to-date.
//  An easy way to see if changes have been made to the remote 
//  and bring the changes down to your local copy is with:
git fetch

//  Even though Sally’s new commits have been fetched to 
//  your local copy of the Git project, those commits are 
//  on the origin/master branch. 
//  Your local master branch has not been updated yet, 
//  so you can’t view or make changes to any of the work she has added.

//  In Lesson III, Git Branching we learned how to merge branches. 
//  Now we’ll use the git merge command to integrate origin/master 
//  into your local master branch. The command:
git merge origin/master


//  Git has performed a “fast-forward” merge, 
//  bringing your local master branch up to speed 
//  with Sally’s most recent commit on the remote.

//  In the output, notice that the HEAD commit has changed. 
//  The commit message now reads same as Sally's
git log


//  Now that you’ve merged origin/master into your local master branch, 
//  you’re ready to contribute some work of your own. The workflow for Git 
//  collaborations typically follows this order:

//  1. Fetch and merge changes from the remote
//  2. Create a branch to work on a new project feature
//  3. Develop the feature on your branch and commit your work
//  4. Fetch and merge from the remote again 
//      (in case new commits were made while you were working)
//  5. Push your branch up to the remote for review

//  Steps 1 and 4 are a safeguard against merge conflicts, 
//  which occur when two branches contain file changes that cannot 
//  be merged with the git merge command. Step 5 involves git push, 
//  a command you will learn in the next exercise.

```
![git checkout master](merge1.jpg)
![git merge bugFix](merge2.jpg)
![git checkout bugFix; git merge master](merge3.jpg)

# ide
download tar.gz and do the following
```commandline
sudo mkdir /usr/share/ide
sudo mv ide.tar.gz /usr/share/ide
cd /usr/share/ide
sudo tar -xzvf ide.tar.gz -C /usr/share/ide
```

[Move everything to parent directory](https://superuser.com/questions/88202/how-do-i-move-files-and-directories-to-the-parent-folder-in-linux/542214)
```commandline
cd /usr/share/ide/ide
sudo find . -maxdepth 1 -exec mv {} .. \;
cd /usr/share/ide
sudo rm -r ide
```

```commandline
sudo gedit /usr/share/ws/bin/ide64.vmoptions
sudo gedit /usr/share/ws/bin/ide.vmoptions

-javaagent:/full/path/to/myFile.jar
```

```commandline
cp ~/myFile.jar /usr/share/ide/bin/
sudo chown root.root myFile.jar
sudo chmod 755 myFile.jar
sudo java -jar /usr/share/ide/bin/myFile.jar
cd /usr/share/ide/bin/ && ./ide.sh
```

# ide create shortcut
```commandline
sudo gedit /usr/share/applications/ide.desktop
```

```
[Desktop Entry]
Version=1.0
Name=ide
Exec=/usr/share/ide/bin/ide.sh
Path=/usr/share/ide/bin
Icon=/usr/share/ide/bin/ide.png
Terminal=false
Type=Application
Categories=Application;Development;IDE
Keywords=ide;idename;
StartupWMClass=ide
```

[Duplicating or missing launcher icon](https://askubuntu.com/questions/403766/duplicate-icons-for-manually-created-gnome-launcher-items):
```
$ xprop WM_CLASS
# click application to print StartupWMClass
# insert 'StartupWMClass=app_name' line in .desktop
```

# create symlink
```commandline
sudo ln -s /full/path/to/script.sh /usr/local/bin/name_of_new_command
vim /full/path/to/script.sh 
    # --snip--
    java -jar path/to/jar/jarName.jar "$*"
    # "$*" takes all arguements given to the bash script and send them directly
    # to your java program.
    name_of_new_command arg1 arg2 arg3 arg4
```


# Useful Commands
```commandline
lshw -short
lshw -class network

dmesg
```


# tlp
improve power usage and battery life in laptop


# powertop


# Java
```commandline
java -version
javac -version # openjdk not installed
# openjdk
sudo apt-get install default-jdk

# oracle jdk
sudo yum localinstall jdk-8u172-linux-x64.rpm
```

set default java command
```commandline
sudo alternatives --config java
1 ...
2 ...
```


# Eclipse
[Download tar.gz](https://www.eclipse.org/downloads/download.php?file=/oomph/epp/oxygen/R/eclipse-inst-linux64.tar.gz&mirror_id=1222). Extract and install to /opt/
```commandline
tar -xvzf ~/Downloads/eclipse-inst-linux64.tar.gz
```

Create .desktop file named exactly the same as the eclipse binary
```commandline
gedit ~/.local/share/applications/eclipse.desktop
```

Copy the following to eclipse.desktop and drag running eclipse to favorite bar
```
[Desktop Entry]
Type=Application
Name=Eclipse
Comment=Eclipse Integrated Development Environment
Icon=/opt/eclipse.jee.oxygen/icon.xpm
Exec=/opt/eclipse.jee.oxygen/eclipse
Terminal=false
Categories=Development;IDE;Java;
```

Create new project and new class in src dir.
```commandline
user@pc:~/workspace/java/project1/src/project4$ ls
    ClassPath.java
user@pc:~/workspace/java/project1/src/project4$ javac ClassPath.java 
user@pc:~/workspace/java/project1/src/project4$ ls
    ClassPath.class  ClassPath.java
user@pc:~/workspace/java/project1/src$ java -cp . project1_4.ClassPath
    AAA
    BBB 
```


# Sublime Text 3
install sublime packages
```
Package Control
ColorSchemeSelector
1337 color scheme
3024 color scheme
A File icon
All Autocomplete
ColorSublime
markdown preview
markdownEditing
Seti_UI
Theme-Flatland
View In Browser
```


# Samba
- setting on Ubuntu
```commandline
sudo apt-get update
sudo apt-get install samba
sudo gedit /etc/samba/smb.conf &
```

```
[share]
    comment = Ubuntu File Server Share
    path = /srv/samba/share
    browsable = yes
    guest ok = yes
    read only = no
    create mask = 0755
```

```commandline
sudo mkdir -p /srv/samba/share
sudo chown nobody.nogroup /srv/samba/share
sudo gedit /etc/init/nmbd.conf

sudo service smbd restart
sudo service nmbd restart

sudo touch share/test.txt
```
- setting on Windows
check network folder



# Gimp


# Shutdown Issues
Ubuntu GNOME 17.04 [hangs on shutdown/restart](https://askubuntu.com/questions/764568/ubuntu-16-04-hangs-on-shutdown-restart) with error messages
```
[1553.041966] brcmfmac: brcmf_cfg80211_reg_notifier: not a ISO3166 code(0x30 0x30)
[1553.077148] brcmfmac: brcmf_inetaddr_changed: fail to get arp ip table err:-23
```
