class slurm::install {
  package { ['munge', 'libmunge-dev']:
     ensure => 'present',
  }
}
