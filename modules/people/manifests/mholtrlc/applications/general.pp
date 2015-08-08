# == Description
#
# Applications specific for Michael Holt
# that should be on all his machines.
#
class people::mholtrlc::applications::general {

  include 'augeas'
  include 'caffeine'
  include 'chrome'
  include 'cyberduck'
  include 'docker'
  include 'firefox'
  include 'git'
  include 'iterm2::stable'
  include 'kindle'
  include 'launchbar'
  include 'mongodb'
  include 'nodejs::global'
  include 'packages::asciidoc'
  include 'packages::jenv'
  include 'packages::lastpass'
  include 'packages::sourcetree_cli'
  include 'skitch'
  include 'skype'
  include 'sourcetree'
  include 'sublime_text_2'
  include 'tmux'
  include 'vagrant'
  include 'virtualbox'
  include 'zsh'

  #package{ 'zsh': }
  #package{ 'htop-osx': }
  #package{ 'tree': }
  #package{ 'graphviz': }

  package { 'httpie':
    provider => 'homebrew',
    ensure => 'latest'
  }

# Window mover, resizer and more
  # http://www.binarybakery.com/product.php?app=windownaut
  # package { 'Windownaut':
  #   source   => 'http://macapps.mooregreatsoftware.com.s3.amazonaws.com/Windownaut-1.2.6.dmg',
  #   provider => appdmg,
  # }

  # include 'iterm2::colors::solarized_dark'

}
