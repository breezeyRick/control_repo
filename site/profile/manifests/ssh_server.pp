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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD3TLJpiAxObh70+C33rEeeT5EExbPPrcxaUB/wP3KM0sKuXm9A/FqhqJ/YK+vtR8mtI4se59oRwczTcNm6TELYoCpkRMqjWkQgLLLFkB4gUlDC1KO3jvPFLWlts+cC0yDuLU6jxC2J+8CzmOn5NJcxep0xKBeBYQ+n+CVgK9c9KPtqmscAVsOHjrMebuKllgxb6tSa7/7Gd95+0P6HPGR6wf7mNyTAOTWBgPOfxFdb31E4wg6nedTYLDsGHwMl74v3kT1vrb1sG8AV04fiIpi8XPz/NQm+ZdJEUR0hq+5UAbfoqN2agx207xnkW+mhwD01t5fdF2RSH9dDDrvZTu2N',
	}  
}
