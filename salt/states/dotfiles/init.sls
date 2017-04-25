/home/vagrant/dotfiles:
  file.directory:
    - user: vagrant
    - group: vagrant
    - mode: 755
    - makedirs: true

dotfiles-bash:
  git.latest:
    - name: https://github.com/rabbenhuis/dotfiles-bash.git
    - target: /home/vagrant/dotfiles/bash
    - user: vagrant

install dotfiles-bash:
  cmd.run:
    - name: /home/vagrant/dotfiles/bash/install.sh
    - cwd: /home/vagrant/dotfiles/bash
    - runas: vagrant

dotfiles-screen:
  git.latest:
    - name: https://github.com/rabbenhuis/dotfiles-screen.git
    - target: /home/vagrant/dotfiles/screen
    - user: vagrant

install dotfiles-screen:
  cmd.run:
    - name: /home/vagrant/dotfiles/screen/install.sh
    - cwd: /home/vagrant/dotfiles/screen
    - runas: vagrant
