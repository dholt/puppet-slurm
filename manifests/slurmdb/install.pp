class slurm::slurmdb::install {
  package {'slurmdbd':
     ensure => $slurm::params::slurm_version,
  }
}
