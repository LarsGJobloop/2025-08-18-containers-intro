terraform {
  required_providers {
    hetzner = {
      source  = "opsheaven/hetzner"
      version = "0.2.0"
    }
  }
}

variable "hcloud_token" {
  description = "The Hetzner API key"
  sensitive   = true
}

provider "hetzner" {
  token = variable.hcloud_token
}
