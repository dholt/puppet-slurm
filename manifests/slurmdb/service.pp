class slurm::slurmdb::service {
  service { "slurmdbd":
           ensure     => running,
           hasstatus  => true,
           hasrestart => true,
           enable     => true,
           require    => Class["slurm::slurmdb::config"];
  }
}
