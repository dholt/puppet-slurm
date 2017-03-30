class slurm::master::service {
  service { "slurmdbd":
           ensure     => running,
           hasstatus  => true,
           hasrestart => true,
           enable     => true,
           require    => Class["slurm::master::config"];
  }
  service { "slurmctld":
           ensure     => running,
           hasstatus  => true,
           hasrestart => true,
           enable     => true,
           require    => Class["slurm::master::config"];
  }
}
