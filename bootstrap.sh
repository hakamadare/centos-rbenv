#!/bin/bash
yum -y install rubygems 2>/dev/null || true

if [[ ! $(gem list r10k) ]]; then
  gem install r10k
fi

PUPPETFILE=./Puppetfile PUPPETFILE_DIR=/vagrant/modules r10k --verbose 3 puppetfile install
