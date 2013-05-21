class people::seanknox::config {

  osx::recovery_message { 'If this Mac is found, please call and collect your reward: 415-401-5633': }

  # Common OSX default configurations
  boxen::osx_defaults { 'Change software update check frequency to daily':
    key    => 'ScheduleFrequency',
    domain => 'com.apple.SoftwareUpdate',
    value  => '1',
    user   => $::boxen_user
  }

  # Time Machine
  boxen::osx_defaults { 'Prevent Time Machine from prompting to use new hard drives as backup volume':
    key    => 'DoNotOfferNewDisksForBackup',
    domain => 'com.apple.TimeMachine',
    value  => 'true',
    user   => $::boxen_user
  }

  # Finder
  boxen::osx_defaults { 'Use Column view in all Finder windows by default':
    key    => 'FXPreferredViewStyle',
    domain => 'com.apple.Finder',
    value  => 'clmv',
    user   => $::boxen_user
  }
  boxen::osx_defaults { 'Show Path bar in Finder':
    key    => 'ShowPathbar',
    domain => 'com.apple.Finder',
    value  => 'true',
    user   => $::boxen_user
  }

  boxen::osx_defaults { 'Autohide the Dock':
    key    => 'autohide',
    domain => 'com.apple.dock',
    value  => 'yes',
    user   => $::boxen_user
  }

  boxen::osx_defaults { 'Enable magnification':
    key    => 'magnification',
    domain => 'com.apple.dock',
    value  => 'true',
    user   => $::boxen_user
  }

  # Keyboard
  class { 'osx::global::key_repeat_delay':
      delay => 0
  }
  class { 'osx::global::key_repeat_rate':
    rate => 12
  }

  include osx::global::disable_key_press_and_hold

  boxen::osx_defaults { 'Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)':
    key    => 'AppleKeyboardUIMode',
    domain => 'NSGlobalDomain',
    value  => '3',
    user   => $::boxen_user
  }

  boxen::osx_defaults { 'Automatically illuminate built-in MacBook keyboard in low light':
    key    => 'kDim',
    domain => 'com.apple.BezelServices',
    value  => 'true',
    user   => $::boxen_user
  }
  boxen::osx_defaults { 'Turn off keyboard illumination when computer is not used for 5 minutes':
    key    => 'kDimTime',
    domain => 'com.apple.BezelServices',
    value  => '300',
    user   => $::boxen_user
  }

  # Bluetooth
  boxen::osx_defaults { 'Improve the quality of Bluetooth Audio':
    key    => '"Apple Bitpool Min (editable)"',
    domain => 'com.apple.BluetoothAudioAgent',
    value  => '40',
    user   => $::boxen_user
  }

  boxen::osx_defaults { 'Disable the "Are you sure you want to open this application?" dialog':
    key    => 'LSQuarantine',
    domain => 'com.apple.LaunchServices',
    value  => 'false',
    user   => $::boxen_user
  }



}

