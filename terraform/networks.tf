

# Create a network
resource "civo_network" "main_network" {
  label  = "main_network"
  region = local.region_name

}

# reserve ip for loadbalancer
resource "civo_reserved_ip" "gateway" {
    name = "public_gateway"
    region = local.region_name
}

# Create a firewall
resource "civo_firewall" "public_firewall" {
  name   = "public_firewall"
  region = local.region_name
  network_id = civo_network.main_network.id
  create_default_rules = true

  egress_rule {
    label      = "egress-all"
    protocol   = "tcp"
    port_range = "1-65535"
    cidr       = ["0.0.0.0/0"]
    action     = "allow"
  }
}


