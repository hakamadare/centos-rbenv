#!/bin/bash
echo '*** Install rubygems ***'
yum -y install rubygems 2>/dev/null || true

echo '*** Install bundler ***'
if [[ ! $(gem list bundler) ]]; then
  gem install --no-document bundler
fi

echo '*** Install gems ***'
bundle install

echo '*** Install Puppet modules ***'
PUPPETFILE=/vagrant/Puppetfile PUPPETFILE_DIR=/vagrant/modules bundle exec r10k --verbose 3 puppetfile install
