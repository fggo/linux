```commandline
dnf check-update
sudo dnf upgrade
```


# gnome extension
```commandline
sudo dnf install chrome-gnome-shell
```


# turtl
```commandline
tar xvjf turtl-linux64-0.6.4.tar.bz2
cd turtl-linux64
./install.sh

pkcon install libXScrnSaver
```


# vlc
```commandline
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install vlc
```


# Vundle
```commandline
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
:PluginInstall
```


# pipenv
```commandline
pip3 install --user pipenv
```


# MySQL - install yum repository
```commandline
sudo dnf install https://dev.mysql.com/get/mysql80-community-release-fc27-1.noarch.rpm
```

# MySQL - update or install MySQL
```commandline
sudo dnf --enablerepo=mysql80-community install mysql-community-server
```

# MySQL - start server and autostart on boot
```commandline
systemctl start mysqld.service ## use restart after update

systemctl enable mysqld.service
```

# MySQL - get your generated random root password
```commandline
grep 'A temporary password is generated for root@localhost' /var/log/mysqld.log | tail -l
```

# MySQL - installation
```commandline
/usr/bin/mysql_secure_installation
```

# MySQL - set new password
```commandline
mysqladmin -u root password [your_password_here]
```

# MySQL - connect to database
```commandline
mysql -u root -p

## OR ##
mysql -h localhost -u root -p
```
