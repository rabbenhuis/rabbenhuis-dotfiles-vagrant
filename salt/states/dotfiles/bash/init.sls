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
