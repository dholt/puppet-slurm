class slurm::master::install {
  package {'slurmctld':
     ensure => $slurm::params::slurm_version,
  }
}
