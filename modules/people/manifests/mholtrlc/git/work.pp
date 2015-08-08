# == Description
#
# Git repositories specific for Jim Moore (aka "jdigger") that
# should be on his work machines.
#
class people::mholtrlc::git::work {


  $home = "/Users/${::boxen_user}"
  $srcdir = "${home}/src"

  validate_absolute_path($srcdir)

}
