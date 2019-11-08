#!/bin/sh


# arret des services contenant le mot geogig et lancé par l'utilisateur fred
# ps aux | grep geogig | egrep ^fred | cut -f6 -d\ | xargs -I{} kill {}
# ps aux | grep geogig | egrep ^fred | cut -f7 -d\ | xargs -I{} kill {}

# vu ici :
# https://stackoverflow.com/questions/3510673/find-and-kill-a-process-in-one-line-using-bash-and-regex

#ps aux | grep '[g]eogig '
ps aux | grep '[g]eogig ' | awk '{print $2}'
ps aux | grep '[g]eogig ' | awk '{print $2}' | xargs -I{} kill {}
sleep 2
ps aux | grep '[g]eogig ' ; netstat -lataupen | grep 818
