name              'atom'
maintainer        'Sous Chefs'
maintainer_email  'help@sous-chefs.org'
license           'Apache-2.0'
source_url        'https://github.com/sous-chefs/atom'
issues_url        'https://github.com/sous-chefs/atom/issues'
description       'Installs/Configures the Atom text editor - a hackable editor based on Electron, maintained by GitHub'
chef_version      '>= 15.3'
version           '1.0.0'

supports 'mac_os_x'
supports 'windows'
supports 'ubuntu'
supports 'debian'

depends 'apt', '>= 6.1'
depends 'homebrew', '>= 4.3'
