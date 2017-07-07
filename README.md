* [Hangul](#hangul)
* [Gparted](#gparted)

# Hangul

## Install
1. sudo apt-get install fcitx-hangul
2. System Settings > Language Support. "Language Support is not install completely" > Install
3. Keyboard input method system:  ibus -> fcitx
4. Restart

## Set Shortcut
1. AllSettings > Keyboard > Shortcuts Tab > Typing
2. Switch to Next source, Switch to Previous sourc, Compose Key, Alternative Characters Key  set to 'Disabled' (press 'backspace')
3. Compose Key:Disabled를 길게 눌러 Right Alt를 선택한다.
4. Switch to next source는 한영키를 눌러 Multikey를 선택한다. 반드시 Compose Key 설정이 먼저되어야 Multikey를 선택할 수 있다.
5. AllSetting 윈도우를 닫고 상단 메뉴바 오른쪽의 입력기 선택하는 것을 본다. 키보드 표시가 된 것이 fcitx이다. fcitx아이콘을 눌러서 Configure Current Input Method를 선택한다.
6. Keyboard-English(US)가 있다면 +를 눌러 Hangul을 추가한다. (Uncheck “Only Show Current Language”). Korean이 아닌 Hangul이여야 한다.
7. Global Config tab에서 Trigger Input Method는 한/영키를 눌러 Multikey로 설정(왼쪽 오른쪽 모두)하고 Extrakey for trigger input method는 Disabled로 설정한다. (Mac에서는 command key이므로 대신 shift+space를 선택한다.)
8. Global Config tab에서 Program > Share State Among Window > All을 선택한다.

## Test
1. log out을 한후 다시 log in을 한다.
2. 한글/영어가 한영키로 전환되는지 확인한다.
```
Setting-Launguage Support-install & update-select keyboard input method system as 'fcitx'
Setting-Keyboard-shortcut (Typing) : 
        Switch to next - Multikey (hangul key)
        Switch to previous - Disabled
        Compose Key - R Alt
        Alternative Characters Key - R Ctrl
Setting-Text Entry : add Hangul(fcitx)
```

# Gparted
```
sudo apt-get install gparted
```

# Google-Chrome
```
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
# if you encounter any errors
sudo apt-get -f install  
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

# Java
```
java -version
javac -version # openjdk not installed
sudo apt-get install default-jdk
```

# Eclipse Neon
[download](https://www.eclipse.org/downloads/download.php?file=/oomph/epp/neon/R/eclipse-inst-linux64.tar.gz)

extract & install. create new project and new class in src dir.
```
user@9550:~/workspace/project1/src/project4$ ls
    ClassPath.java
user@9550:~/workspace/project1/src/project4$ javac ClassPath.java 
user@9550:~/workspace/project1/src/project4$ ls
    ClassPath.class  ClassPath.java
user@9550:~/workspace/project1/src$ java -cp . project1_4.ClassPath
    AAA
    BBB 
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

# Unity Tweak Tool
```
sudo apt-get install unity-tweak-tool
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle
# use unity tweak tool
# .icons .themes in home directory. ctrl + h to see hidden files
```

# power top
```
sudo apt-get install powertop
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

# qpdfview  
```
sudo apt-get update
sudo apt-get install qpdfview
```

# Calibre E-book Reader
```
sudo apt-get install calibre
```

# GNU Octave 
```
# Use the octave ppa, which already has the 4.0 version.
sudo add-apt-repository ppa:octave/stable
sudo apt-get update
sudo apt-get install octave
```

# Sublime-Text-2
```
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update
sudo apt-get install sublime-text
```

# Sublime-Text-3
```
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer
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

# samba
- Ubuntu
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

sudo restart smbd
sudo restart nmbd

sudo touch share/test.txt
```
- Windows
check network folder
