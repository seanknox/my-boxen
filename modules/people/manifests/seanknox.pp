class people::seanknox {

  include people::seanknox::applications
  /*include people::seanknox::config*/

  $home     = "/Users/${::luser}"
  $dotfiles = "${home}/dotfiles"
  $global_ruby_version = "1.9.3"
  $global_nodejs_version = "v0.10.5"

  repository { $dotfiles:
    source  => 'seanknox/dotfiles'
  }

  # set global ruby version in rbenv
  class { 'ruby::global':
    version => $global_ruby_version
  }

  class { 'nodejs::global':
    version => $global_nodejs_version
  }

}

