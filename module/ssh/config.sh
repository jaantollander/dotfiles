#!/bin/bash
mkdir -p $HOME/.ssh
chmod u=rwx,g=,o=r $HOME/.ssh 

# System-wide configuration
#sudo mkdir -p /etc/ssh
#sudo chmod u=rwx,g=rx,o=rx /etc/ssh
#sudo cp $DOTFILES/module/ssh/config/ssh_config /etc/ssh/ssh_config
#sudo chmod u=rw,g=r,o=r /etc/ssh/ssh_config

# User's configuration. Create if doesn't exist.
touch $HOME/.ssh/config
chmod u=rw,g=,o= $HOME/.ssh/config

mkdir -p $XDG_SCRIPTS_HOME
ln -sf $DOTFILES/ssh/config/start-ssh-agent.sh $XDG_SCRIPTS_HOME/start-ssh-agent.sh
