output "IPv4" {
  value = digitalocean_droplet.web[count.index].ipv4_address
}

output "IPv6" {
  value = digitalocean_droplet.web[count.index].ipv6_address
}

output "Name" {
  value = digitalocean_droplet.web[count.index].name
}

output "ID" {
  value = digitalocean_droplet.web[count.index].id
}