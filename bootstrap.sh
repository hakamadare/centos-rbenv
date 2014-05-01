#!/bin/bash
echo '*** Install rubygems ***'
yum -y install rubygems 2>/dev/null || true

echo '*** Install r10k ***'
if [[ ! $(gem list r10k) ]]; then
  gem install --no-ri --no-rdoc r10k
fi

echo '*** Install Puppet modules ***'
PUPPETFILE=/vagrant/Puppetfile PUPPETFILE_DIR=/vagrant/modules r10k --verbose 3 puppetfile install
