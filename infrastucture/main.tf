variable "debug_key" {
  description = "Public part of your SSH key"
  type        = string
}

resource "hcloud_ssh_key" "debug_key" {
  name       = "debug-key"
  public_key = var.debug_key
}

module "compose_app" {
  source = "./compose-app"

  # Which compose file
  compose_app_repo   = "https://github.com/LarsGJobloop/2025-08-18-containers-intro.git"
  compose_app_branch = "main"
  compose_app_path   = "compose.yaml"

  # Reconcillation configuration
  reconciliation_intervall = "1min"

  # DEBUG
  ssh_key_id = hcloud_ssh_key.debug_key.id
}
