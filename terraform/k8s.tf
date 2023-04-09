

# Create a cluster with talos
resource "civo_kubernetes_cluster" "main_cluster" {
  name         = var.cluster_name
  applications = ""
  network_id   = civo_network.main_network.id
  firewall_id  = civo_firewall.public_firewall.id
  region       = local.region_name
  cluster_type = "talos"
  tags         = "main cluster talos k8s dev test prod"

  pools {
    label      = "back-end" // Optional
    node_count = 3
    size       = element(data.civo_size.large.sizes, 0).name
  }
}
