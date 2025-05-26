#!/bin/sh
# NO TE BASES TANTO Y SOURCEALO, NO LO EJECUTES PORQUE ESTO DEJA VARIABLES DE ENTORNO GAGA
SSH_CHECK=$(ps ax | grep ssh-agent | wc -l)
if [ $((SSH_CHECK)) -gt 1 ] ; then
    echo "furrifacto del dia: ssh agent se esta corriendo"
else
    eval $(ssh-agent -s)
fi
unset SSH_CHECK
