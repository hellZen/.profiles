# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022
echo "*************************running .profile_0.3"
# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Set PS1 for linefeed and less clutter
PS1="\n[\e[01;34m\u@\h\e[00m]   \e[01;34m\w\e[00m\n? "
# Turn the prompt symbol red if the user is root
if [ $(id -u) -eq 0 ];
then # you are root, make the prompt red
    PS1="[\e[01;34m\u@\h\e[00m]----[\e[01;34m$(pwd)\e[00m]\n\e[01;31m#\e[00m "
fi


WWW=/var/www  ;                          export WWW
BAK=/media/WDMyBook/BACKUP;              export BAK

echo **Working PATH
echo $PATH

echo .bash_profile complete**
echo ""
sleep 2
clear
