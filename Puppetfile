# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "2.3.5"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "gcc",        "2.0.0"
github "git",        "1.2.4"
github "homebrew",   "1.1.2"
github "hub",        "1.0.0"
github "inifile",    "0.9.0", :repo => "cprice404/puppetlabs-inifile"
github "nginx",      "1.4.0"
github "nodejs",     "3.2.5"
github "repository", "2.2.0"
github "ruby",       "6.0.1"
github "stdlib",     "4.0.2", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "osx",               "1.3.2"
github "property_list_key", "0.1.0"
github "macvim",            "1.0.0"
github "gitx",              "1.2.0"
github "dropbox",           "1.1.0"
github "postgresapp",       "1.0.0"
github "hipchat",           "1.0.4"
github "tmux",              "1.0.2"
github "iterm2",            "1.0.2"
github "heroku",            "2.0.0"
github "emacs",             "1.1.0"
github "xquartz",           "1.1.0"
github "python",            "1.2.1"
github "chrome",            "1.1.0"
github "zsh",               "1.0.0"
github "redis",             "1.0.0"
github "riak",              "1.0.0"
github "mysql",             "1.1.0"
github "vim",             "1.0.4", :repo => "seanknox/puppet-vim"
# github "vim",               "1.0.3"
github "kindle",            "1.0.1"
github "flux",              "0.0.1"
github "alfred",            "1.1.1"
github "skype",             "1.0.2"
github "transmission",      "1.0.0"
github "zsh",               "1.0.0"
github "onepassword",       "1.0.0"
github "pow",               "1.0.0"
github "sublime_text_2",    "1.1.1"
github "ctags",             "1.0.0"

