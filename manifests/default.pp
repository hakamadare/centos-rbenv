class { 'rbenv': } ->
rbenv::plugin { 'sstephenson/ruby-build': } ->
rbenv::build { [ '1.9.3-p545', '2.1.1' ]:
  global => true,
} ->
rbenv::gem { 'rdiscount-1.9.3':
  gem          => 'rdiscount',
  ruby_version => '1.9.3-p545',
} ->
rbenv::gem { 'rdiscount-2.1.1':
  gem          => 'rdiscount',
  ruby_version => '2.1.1',
}
