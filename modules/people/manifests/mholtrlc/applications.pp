# == Description
#
# Applications specific for Michael Holt.
#
# == Parameters
#
# [*system_roles*]
#   An array of the roles that this system participates in.
#   Valid values are 'work' and 'personal'. If not passed in,
#   it is looked up in hiera using the key 'people::mholtrlc::system_roles'
#
class people::mholtrlc::applications (
  $system_roles = undef
) {

  $_system_roles = hiera_array('people::mholtrlc::system_roles', [])
  $roles = $system_roles ? { undef => $_system_roles, default => $system_roles}

  include people::mholtrlc::applications::general

  if member($roles, 'work') {
    include 'people::mholtrlc::applications::work'
  }
  elsif member($roles, 'personal') {
    #include 'people::mholtrlc::applications::personal'
    notify {"${roles_str} applications not configured yet" :}
  }

}
