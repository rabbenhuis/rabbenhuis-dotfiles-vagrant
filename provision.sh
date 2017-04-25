#!/bin/bash
# This bootstraps a server for development of Puppet Modules on CentOS 6.8
# It has been tested on CentOS 6.8 64bit

set -e

REPO_URL="https://repo.saltstack.com/yum/redhat/salt-repo-latest-1.el6.noarch.rpm"

if [ "$EUID" -ne "0" ]; then
	echo "This script must be run as root." >&2
	exit 1
fi

if ! [[ $(command -v salt-call) ]]; then
	echo "Configure the SaltStack repository (latest)..."
	rpm -Uvh ${REPO_URL} > /dev/null

	echo "Installing salt-minion"
	yum install -y salt-minion > /dev/null

	echo "salt-minion installed"
fi

# Install Extra Packages for Enterprise Linux (EPEL) repository
if ! [[ $(yum repolist | grep epel) ]]; then
	echo "Install Extra Packages for Enterprise Linux (EPEL) repository"
	yum --enablerepo=extras install -y epel-release
fi

echo "Let's roll it out..."
salt-call --local --config-dir=/vagrant/salt/config --file-root=/vagrant/salt/states --pillar-root=/vagrant/salt/pillar state.highstate
