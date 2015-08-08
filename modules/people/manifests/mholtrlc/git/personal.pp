# == Description
#
# Git repositories specific for Jim Moore (aka "jdigger") that
# should be on his personal (non-work) machines.
#
class people::mholtrlc::git::personal {

  $home = "/Users/${::boxen_user}"
  $srcdir = "${home}/src"

  validate_absolute_path($srcdir)


}
