terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.52.0"
    }
  }
}

variable "hcloud_token" {
  description = "The Hetzner API key"
  sensitive   = true
}

provider "hcloud" {
  token = var.hcloud_token
}
