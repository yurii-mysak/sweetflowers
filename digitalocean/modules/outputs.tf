output "IPv4" {
  value = digitalocean_droplet.web.ipv4_address
}

output "IPv6" {
  value = digitalocean_droplet.web.ipv6_address
}

output "Name" {
  value = digitalocean_droplet.web.name
}

output "ID" {
  value = digitalocean_droplet.web.id
}