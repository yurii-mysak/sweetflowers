terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "web" {
  # Obtain your ssh_key id number via your account. See Document https://developers.digitalocean.com/documentation/v2/#list-all-keys
  ssh_keys           = [var.fingerprint]
  image              = var.ubuntu
  region             = var.do_sgp1
  size               = "s-1vcpu-1gb"
  backups            = false
  ipv6               = false
  monitoring         = true
  name               = "web-sgp1"
  user_data          = file("user-data.web")
  count              = 2

  connection {
      host     = self.ipv4_address
      type     = "ssh"
      private_key = file(var.ssh_key)
      user     = "root"
      timeout  = "2m"
    }
}

#resource "digitalocean_ssh_key" "example" {
#  name       = "my"
#  public_key = var.ssh_key
#}