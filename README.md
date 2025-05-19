
# dp-installer
descriptive programing installer

# install
1. `install git` (for windows have git-bash installed also)
2. `install vagrant` https://developer.hashicorp.com/vagrant, use `virtualbox` as a provider (should be the default)
3. open terminal (git-bash for windows) go to the folder where you want to install and run:<br/>
   `git clone https://github.com/alexstanciu-1/dp-installer.git ./installer && ./installer/install.sh`

If the installation was ok you should be able to access:<br/>
http://localhost:8888/

# todo
able to re-run install on existing instance<br/>
use more `custom` ports to avoid conflicts with other apps<br/>
<br/>
fix this (error on `vagrant provision`):<br/>
May 10 10:22:47 vagrant systemd[1]: php8.4-fpm.service: Start request repeated too quickly.<br/>
May 10 10:22:47 vagrant systemd[1]: php8.4-fpm.service: Failed with result 'exit-code'.<br/>
May 10 10:22:47 vagrant systemd[1]: Failed to start php8.4-fpm.service - The PHP 8.4 FastCGI Process Manager.<br/>

============================================================================

vagrant plugin install vagrant-timezone

@todo - install events plugin to prevent machine destroy

# https://github.com/stemar/vagrant-ubuntu-22-04/blob/master/settings.yaml

/*
:machine:
  # https://app.vagrantup.com/bento/boxes/ubuntu-22-04
  :box: bento/ubuntu-22.04 # 64GB HDD
  :memory: 3072 # 3GB RAM
  :cpus: 1
  :hostname: ubuntu-22-04
  :timezone: Canada/Pacific

:forwarded_ports:
# SSH
- :id: ssh
  :host: 2200
  :guest: 22
# HTTP
- :host: 8000
  :guest: 80
# MySQL
- :host: 33060
  :guest: 3306

:synced_folder:
  :host: ~/Code
  :guest: /home/vagrant/Code

:copy_files:
- :source: ~/.ssh
  :destination: ~/.ssh
- :source: ~/.gitconfig
  :destination: ~/.gitconfig
*/

