class slurm::master::install {
  package {'slurmdbd':
     ensure => $slurm::params::slurm_version,
  }
  package {'slurmctld',
     ensure => $slurm::params::slurm_version,
  }
}
