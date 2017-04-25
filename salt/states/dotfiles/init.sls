/home/vagrant/dotfiles:
  file.directory:
    - user: vagrant
    - group: vagrant
    - mode: 755
    - makedirs: true

include:
  - dotfiles.bash
  - dotfiles.screen

dotfiles:
  require:
    - sls: dotfiles.bash
    - sls: dotfiles.screen
