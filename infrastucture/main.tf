module "compose_app" {
  source = "./compose-app"

  # Which compose file
  repository = "https://github.com/LarsGJobloop/2025-08-18-containers-intro.git"
  branch     = "main"
  path       = "compose.yaml"

  # Reconcillation configuration
  interval = "1min"

  # DEBUG
  ssh_key = ""
}
