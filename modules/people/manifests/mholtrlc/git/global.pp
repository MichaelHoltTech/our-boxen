# == Description
#
# Git settings anspecific for Jim Moore (aka "jdigger")
# that should be on all his machines.
#
class people::mholtrlc::git::global {

  git::config::global {
    'user.name':     value  => 'Michael Holt';
    'push.default':  value  => 'current';
    'core.autocrlf': value  => 'input';
    'core.safecrlf': value  => 'warn';
    'core.editor':   value  => 'subl -w';
  }

}
