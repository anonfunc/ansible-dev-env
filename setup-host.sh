#!/bin/bash
if [[ $# != 1 ]]
then
  echo "Expecting host name as first parameter"
fi

echo "Will run on matching hosts:"
ansible --list-hosts $1
echo "Press enter to continue"
read
ansible-playbook -l $1 docker-playbook.yml
ansible-playbook -l $1 user-playbook.yml
