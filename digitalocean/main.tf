#terraform {
#  required_providers {
#    digitalocean = {
#      source = "digitalocean/digitalocean"
#      version = "~> 2.0"
#    }
#  }
#}
#
#variable "do_token" {}
#
#provider "digitalocean" {
#  token = var.do_token
#}
variable "cnt" {}

module "groups" {
  source = "../"

  droplet_count = var.cnt
  group_name    = "group1"
}
