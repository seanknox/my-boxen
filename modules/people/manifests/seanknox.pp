class people::seanknox {
  include tmux
  include iterm2::stable
  /*python needs xquartz, but doesn't appear to be working :/*/
  /*include python*/

  $home     = "/Users/${::luser}"
  $dotfiles = "${home}/dotfiles"
  $global_ruby_version = "1.9.3"

  repository { $dotfiles:
    source  => 'seanknox/dotfiles'
  }

  # set global ruby version in rbenv
  class { 'ruby::global':
    version => $global_ruby_version
  }

  ruby::gem { "pry for ${version}":
    gem     => 'pry',
    ruby    => $global_ruby_version,
    version => '~> 0.9.12.2'
  }
  ruby::gem { "rails for ${version}":
    gem     => 'rails',
    ruby    => $global_ruby_version,
    version => '~> 3.2.13'
  }

}
