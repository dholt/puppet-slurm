class slurm::master::service {
  service { "slurmctld":
           ensure     => running,
           hasstatus  => true,
           hasrestart => true,
           enable     => true,
           require    => Class["slurm::master::config"];
  }
}
