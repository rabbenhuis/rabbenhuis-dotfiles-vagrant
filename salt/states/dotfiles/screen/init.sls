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
