#!/bin/sh

v_a_p=`which vagrant-ansible-playbook 2>/dev/null`
if [ -z "$v_a_p" ]; then
    wget https://raw.githubusercontent.com/shaleh/vagrant-ansible-playbook/master/vagrant-ansible-playbook -O $BIN_PATH/vagrant-ansible-playbook
    chmod +x $BIN_PATH/vagrant-ansible-playbook
fi

if [ ! -d setup-dev-env ]; then
    set -e
    git clone https://github.com/shaleh/setup-dev-env
    (cd setup-dev-env && ./galaxy.sh)
fi
