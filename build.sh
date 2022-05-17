#! /bin/sh

set -e

if [ ! -f id_rsa ]; then
	curl -o id_rsa https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant
fi

#docker run -i --rm quay.io/coreos/butane:release --pretty --strict < ignition.yml > ignition.cfg
packer build -var-file vars.json fedora-coreos.json
