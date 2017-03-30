class slurm::slurmdb::install {
  package {'mysql-server':
     ensure => 'present',
  }
  package {'slurmdbd':
     ensure => $slurm::params::slurm_version,
  }
}
