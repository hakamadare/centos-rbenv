class { 'rbenv': } ->
rbenv::plugin { 'sstephenson/ruby-build': } ->
rbenv::build { [ '1.9.3-p545', '2.0.0-p451' ]:
  global => true,
} ->
rbenv::gem { 'rdiscount':
  ruby_version => '1.9.3-p545',
} ->
rbenv::gem { 'rdiscount':
  ruby_version => '2.0.0-p451',
}
