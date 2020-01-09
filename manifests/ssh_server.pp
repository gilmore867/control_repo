class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                 ensure => 'running',
                 enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                  ensure => present,
                  user   => 'root',
                  type   => 'ssh-rsa',
                  key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDK8MOQLpdpNqVTM7FxPSwVSp5Hmvf1GMB14++HTsMiIZ7ObSSirhEhFKrOA37WPbYybgR1qCow0TAPhivEiM6TzM3mGWEkHTPRrittndDswAIj7W9qKuDw8JF2Hz14dYGKHKKZlcSEYIzpB2g3Iy6g6jtBjmJjfdgPra4T4+XWs6UBVdjaHIWJdQ7GDPROh6AD9erotiUYaMVNIG3emVzopDwtMHhL73d0RXoKt9SNsANg4FgKxBuj+kHjyfWZsZVkW8mVwS2yESCpAQ5BOhMML+Nx5uIXt2fAPnrYRL3CpG89suTZFC6eK192i9DXLI+ZxL0GJMbTC/qeZN+oJ1y3',
         }
  }
        
