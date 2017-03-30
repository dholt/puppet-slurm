class slurm::slurmdb::config {

  file{'/etc/slurm':
    ensure  => 'link',
    target  => '/etc/slurm-llnl',
    force   => 'true',
    require => Class['slurm::slurmdb::install'],
    notify  => Class['slurm::slurmdb::service']
  }

  concat::fragment{'slurmdb-options':
    target  => '/etc/slurm/slurm.conf',
    content => template('slurm/slurm.conf/common/slurm.conf.options.erb'),
    order   => 1
  }

  file{'/etc/slurm/slurmdbd.conf':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('slurm/slurmdbd.conf.erb'),
    require => Class['slurm::slurmdb::install'],
    notify  => Class['slurm::slurmdb::service']
  }
}
