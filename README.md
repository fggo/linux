* [Hangul in GNOME](#hangul-in-gnome)

# Useful Commands
```
lshw -short
lshw -class network

dmesg
```

# tlp
improve power usage and battery life in laptop
```
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp tlp-rdw
```

# Hangul in GNOME
tested on Ubuntu GNOME 17.04
```
sudo apt-get update
sudo apt-get install nabi
im-config  # select hangul & restart
nabi - preference - Hangul tab - change Trigger key to Alt_R
log out and log in again.
```

# Google-Chrome
```
cd /tmp  or /opt
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
# if you encounter any errors
sudo apt-get -f install
```

# Git
REMOTE REPO 'origin' -> LOCAL
```
sudo apt-get update
sudo apt-get install git
mkdir ~/workspace/java && cd ~/workspace/java
git init
git remote add origin https://github.com/fggo/java.git
git pull origin master

git diff HEAD
git diff --staged
git reset octofamily/octodog.txt    #unstaging
git checkout -- octocat.txt
git branch clean_up
```
LOCAL -> REMOTE
```
cd ~\workspace\java
echo "# learn java" >> README.md
git init
git add README.md
git add '*'  #ADD TO STAGE
git commit -m 'Add all local files' 
git remote add origin https://github.com/fggo/java.git
git push -u origin master
```

# Gparted
```
sudo apt-get install gparted
```

# power top
```
sudo apt-get install powertop
```

# GNU Octave 
```
# Use the octave ppa, which already has the 4.0 version.
sudo add-apt-repository ppa:octave/stable
sudo apt-get update
sudo apt-get install octave
```
error handling
```
cd .config/octave
sudo chown username qt-settings
```

# Java
```
java -version
javac -version # openjdk not installed
sudo apt-get install default-jdk
```

# Eclipse
[Download tar.gz](https://www.eclipse.org/downloads/download.php?file=/oomph/epp/oxygen/R/eclipse-inst-linux64.tar.gz&mirror_id=1222). Extract and install to /opt/
```
tar -xvzf ~/Downloads/eclipse-inst-linux64.tar.gz
```

Create .desktop file named exactly the same as the eclipse binary
```
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
```
user@pc:~/workspace/java/project1/src/project4$ ls
    ClassPath.java
user@pc:~/workspace/java/project1/src/project4$ javac ClassPath.java 
user@pc:~/workspace/java/project1/src/project4$ ls
    ClassPath.class  ClassPath.java
user@pc:~/workspace/java/project1/src$ java -cp . project1_4.ClassPath
    AAA
    BBB 
```

# jetbrain in Ubuntu
Download tar.gz from official web site
```
sudo mkdir /usr/share/webstorm
sudo mv ~/Downloads/WebStorm-2017.2.tar.gz /usr/share/webstorm
cd /usr/share/webstorm
sudo tar -xzvf WebStorm-2017.2.tar.gz -C /usr/share/webstorm
```

[Move files and directories to parent directory](https://superuser.com/questions/88202/how-do-i-move-files-and-directories-to-the-parent-folder-in-linux/542214)
```
cd /usr/share/webstorm/WebStorm-172.3317.70
sudo find . -maxdepth 1 -exec mv {} .. \;
cd /usr/share/webstorm
sudo rm -r WebStorm-172.3317.70
```

Add a line to .vmoptions 
```
sudo gedit /usr/share/pycharm/bin/pycharm64.vmoptions
sudo gedit /usr/share/pycharm/bin/pycharm.vmoptions

-javaagent:JetbrainsCrack.jar
```

Copy .jar to /usr/share/pycharm/bin/ and Run
```
sudo java -jar /usr/share/pycharm/bin/JetbrainsCrack.jar
cd /usr/share/pycharm/bin/ && ./pycharm.sh
```

Go to Help > Register > Activation Code, type something(or ThisCrackLicenseId), Ok

# jetbrain in Windows
follow ReadMe.md instruction

# jetbrain create shortcut
```
sudo gedit /usr/share/applications/pycharm.desktop
```

```
[Desktop Entry]
Version=1.0
Name=PyCharm
Exec=/usr/share/pycharm/bin/pycharm.sh
Path=/usr/share/pycharm/bin
Icon=/usr/share/pycharm/bin/pycharm.png
Terminal=false
Type=Application
Categories=Application;Development;IDE
Keywords=ide;python;charm;
StartupWMClass=jetbrains-pycharm
```

Duplicating launcher icon trouble-shooting. [link](https://askubuntu.com/questions/403766/duplicate-icons-for-manually-created-gnome-launcher-items). Add the line to .destkop
```
1. Launch the application
2. Fire up a terminal and run xprop WM_CLASS. Click the application window.
3. You'll get some output like WM_CLASS(STRING) = "Navigator", "Firefox". Choose one of the classes, eg Firefox in this example
4. Add the class as the value of StartupWMClass in the .desktop file. For example, StartupWMClass=Firefox
5. Save the .desktop file, close the application and re-open it. There should now only be 1 icon in the launcher

StartupWMClass=jetbrains-pycharm
StartupWMClass=jetbrains-webstorm
```

# Sublime Text 3
```
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer
```
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
```
sudo apt-get update
sudo apt-get install samba
sudo gedit /etc/samba/smb.conf &
[share]
    comment = Ubuntu File Server Share
    path = /srv/samba/share
    browsable = yes
    guest ok = yes
    read only = no
    create mask = 0755
sudo mkdir -p /srv/samba/share
sudo chown nobody.nogroup /srv/samba/share
sudo gedit /etc/init/nmbd.conf

sudo service smbd restart
sudo service nmbd restart

sudo touch share/test.txt
```
- setting on Windows
check network folder

# Vim
1. Inroduction
2. Two modes, insert and normal(Esc⟷i)
3. Basic movement: ←h ↓j ↑k →l
4. word, WORD movement: w, e, b, W, E, B
5. Number powered movement, e.g. 5w
6. Insert text repeatedly, e.g. 3iYes Esc, 3igo Esc
7. Find a character, f and F, e.g. fw 3fq
8. Go to matching parentheses, %
9. Go to start/end of line, 0 and $
10. Find word under cursor, * and #
11. Goto beginning of the file/ end of the file/ nth line : gg/G/nG
12. Search, /text with n and N (next and previous)
13. Insert new line, o and O (next, previous line) Esc to normal
14. Removing a character, x and X (under and left of the cursor) 
15. Replacing letter under cursor, r, without changing to insert mode
16. Deleting, d and pasting, p,  e.g. dw d2e
17. Repetition with .  e.g. d2w . (keep typing . will keep removing words)
18. Visual mode, v e.g. v e l d (will remove a word)
19. :w (save) :q (quit) :q! (quit without saving) u (undo) ctrl+R (redo) :help

# qpdfview  
```
sudo apt-get update
sudo apt-get install qpdfview
```

# Gimp
```
sudo apt-get autoremove gimp gimp-plugin-registry
# add the following PPA
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
# reinstall the latest GIMP
sudo apt-get install gimp
```

# Visual Studio Code
```
# Download Visual Studio Code (.tar.gz)for Linux
# Extract it: unzip VSCode-linux-x64.zip -d ~/path/to/VSCode
tar -xvzf code-stable-code_1.5.2-1473686317_amd64.tar.gz

# Run the code executable to open Visual Studio Code
# (Optional) Create a symbolic link to conveniently run code from the terminal:
sudo ln -s /path/to/VSCode/code /usr/local/bin/code
# Source: https://code.visualstudio.com/Docs/setup#_linux
```

# Foxit PDF Reader
```
cd /opt/foxit_reader
mv FoxitReader_version_Setup.run.tar.gz /opt/foxit_reader
tar -xvzf FoxitReader_version_Setup.run.tar.gz
./FoxitReader_version_Setup.run
# Uncompress the executable & Untar the .tar file:
#   x: extracts files. tar can collect files or extract them. 
#   z: tells tar to decompress the archive using gzip
#   v: verbose output shows files being extracted.
#   f: tells tar the compressed file path
```

# Unity Tweak Tool
```
sudo apt-get install unity-tweak-tool
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle
# use unity tweak tool
# .icons .themes in home directory. ctrl + h to see hidden files
```

# Utorrent 
[install](http://idroot.net/linux/install-utorrent-ubuntu-16-04/)
```
sudo rm utserver.tar.gz
sudo rm -r /opt/utorrent-server-alpha-v3_3
sudo rm /usr/bin/utserver
cd ~/Downloads
wget http://download-new.utorrent.com/endpoint/utserver/os/linux-x64-ubuntu-13-04/track/beta/ -O utserver.tar.gz
sudo tar -zxvf utserver.tar.gz -C /opt/
sudo chmod 777 /opt/utorrent-server-alpha-v3_3/
sudo ln -s /opt/utorrent-server-alpha-v3_3/utserver /usr/bin/utserver
utserver -settingspath /opt/utorrent-server-alpha-v3_3/ &
# 32-bit : /linux-i386-ubuntu-13-04/
-Open browser and type (http://your-ip-address:8080/gui)
http://localhost:8080/gui  (id : admin  pw: empty)
http://192.168.0.87:8080/gui
# Piratebay - copy url - add torrent url in utorrent page
```

# Shutdown Issues
Ubuntu GNOME 17.04 [hangs on shutdown/restart](https://askubuntu.com/questions/764568/ubuntu-16-04-hangs-on-shutdown-restart) with error messages
```
[1553.041966] brcmfmac: brcmf_cfg80211_reg_notifier: not a ISO3166 code(0x30 0x30)
[1553.077148] brcmfmac: brcmf_inetaddr_changed: fail to get arp ip table err:-23
```
