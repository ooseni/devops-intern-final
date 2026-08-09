# ==============================================================================
# Nomad Job Specification - hello.nomad
# DevOps Intern Final Assessment - Step 5
# Candidate: Oseni Sakariyau Oluwadamilare
# ==============================================================================

job "hello-devops" {
  datacenters = ["dc1"]
  type        = "service"

  group "app-group" {
    count = 1

    restart {
      attempts = 3
      interval = "5m"
      delay    = "15s"
      mode     = "delay"
    }

    task "python-app" {
      driver = "docker"

      config {
        image   = "hello-devops:latest"
        command = "python"
        args    = ["/app/hello.py"]
      }

      resources {
        cpu    = 100 # MHz
        memory = 64  # MB
      }

      logs {
        max_files     = 3
        max_file_size = 5
      }
    }
  }
}
