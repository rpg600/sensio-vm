#!/bin/bash

hostname=$(grep 'servername:' puphpet/config.yaml )
hostname=${hostname##*: }
ip=$(grep 'private_network:' puphpet/config.yaml )
ip=${ip##*: }

if !(grep -q $hostname "/etc/hosts"); then
    echo "Added host $ip $hostname"
    sudo sh -c "echo \"$ip     $hostname\" >> /etc/hosts"
fi

vagrant up
