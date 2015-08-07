class people::mholtrlc {
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::tap_to_click
  include osx::dock::dim_hidden_apps
  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_removable_media_on_desktop
  include osx::finder::enable_quicklook_text_selection
  include iterm2::dev
  include caffeine
  include osxfuse

  package{ 'zsh': }
  package{ 'htop-osx': }
  package{ 'tree': }
  package{ 'graphviz': }
  package{ 'ext4fuse':
      require => Class['osxfuse'],
      ensure  => latest,
   }
  package { 'Pacifist':
    source   => 'http://www.charlessoft.com/pacifist_download/Pacifist_3.5.4.dmg',
    provider => appdmg,
  }

  package { 'MunkiAdmin':
      provider => 'appdmg',
      source   => 'https://github.com/hjuutilainen/munkiadmin/releases/download/v1.2.1/MunkiAdmin-1.2.1.dmg',
  }

  package { 'sshfs':
      provider => 'pkgdmg',
      source   => 'https://github.com/osxfuse/sshfs/releases/download/osxfuse-sshfs-2.5.0/sshfs-2.5.0.pkg',
      require  => Class['osxfuse'],
  }


  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure  => directory
  }


}
