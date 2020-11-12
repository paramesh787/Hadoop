#!/bin/bash
# Collect the server Names from different clusters.
# You should have enabled password less connection.
# If password less connection is not setup, install Ansible on one of the node and you can execute this script.
# The file "edgenodes.txt" contains one server from each cluster. Then reading the host file and printing the server name.
# If you didn't grep it will give multiple/duplicate server names(sometimes) 

for EN in `cat edgenodes.txt`; do echo " "; echo $EN ; echo " "; ssh $EN cat /etc/hosts | awk {'print $2'} | grep -i '.com' >> Host_names.txt; done
