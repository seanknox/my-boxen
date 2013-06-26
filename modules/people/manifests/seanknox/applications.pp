class people::seanknox::applications {

  include tmux
  include iterm2::stable
  include chrome
  include chrome::canary
  include dropbox
  include kindle
  include macvim
  include gitx::dev
  include python
  include mysql
  include flux
  include alfred
  include skype
  include transmission
  include zsh
  include onepassword
  include ctags
  /* include vim */

  include sublime_text_2
  sublime_text_2::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }
  sublime_text_2::package { 'Soda Theme':
    source => 'buymeasoda/soda-theme'
  }
  sublime_text_2::package { 'Rspec':
    source => 'SublimeText/RSpec'
  }
  sublime_text_2::package { 'Apply Syntax':
    source => 'facelessuser/ApplySyntax'
  }
  sublime_text_2::package { 'Git':
    source => 'kemayo/sublime-text-2-git'
  }
  sublime_text_2::package { 'Ctags':
    source => 'SublimeText/CTags'
  }
  sublime_text_2::package { 'Zen Coding':
    source => 'sergeche/emmet-sublime'
  }
  file { "/Users/${::boxen_user}/Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings":
    target  => "/Users/${::boxen_user}/dotfiles/Preferences.sublime-settings",
    require => Repository["/Users/${::boxen_user}/dotfiles"]
  }


  mysql::db { 'mydb': }

  include ruby::1_9_3
  include ruby::2_0_0

  /*ruby::gem { "rails for 1.9.3":*/
  /*  gem     => 'rails',*/
  /*  ruby    => '1.9.3',*/
  /*  version => '~> 3.2.13'*/
  /*}*/
  /*ruby::gem { "rails for 2.0.0":*/
  /*  gem     => 'rails',*/
  /*  ruby    => '2.0.0',*/
  /*  version => '~> 3.2.13'*/
  /*}*/
  /*exec { "rails for 2.0.0":*/
  /*  command => 'gem install -f rails -v 3.2.13'*/
  /*}*/
  /*ruby::gem { "pry for 1.9.3":*/
  /*  gem     => 'pry',*/
  /*  ruby    => '1.9.3',*/
  /*  version => '~> 0.9.12.2'*/
  /*}*/
  /*ruby::gem { "pry for 2.0.0":*/
  /*  gem     => 'pry',*/
  /*  ruby    => '2.0.0',*/
  /*  version => '~> 0.9.12.2'*/
  /*}*/
}

