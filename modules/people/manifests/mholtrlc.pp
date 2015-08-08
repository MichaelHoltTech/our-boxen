# == Description
#
# Machine configuration specific for Michael Holt.
#
class people::mholtrlc {

  include people::mholtrlc::dotfiles
  include people::mholtrlc::applications
  include people::mholtrlc::ruby
  include people::mholtrlc::git
  include people::mholtrlc::sublime_text_2
  include people::mholtrlc::osx

}
