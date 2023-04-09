locals {
  region_name = "FRA1"
  
  hostname = "10.1.8.0/28"

  cluster_nodes_cidr = [
    "10.10.0.0/23",   #  DEV  Cluster Nodes
    "10.11.0.0/23",   #  TEST Cluster Nodes
    "10.12.0.0/23",   #  PROD Cluster Nodes
  ]

  cluster_pods_cidr = [
    "10.10.128.0/17", #  DEV  Pods Range
    "10.11.128.0/17", #  TEST Pods Range
    "10.12.128.0/17", #  PROD Pods Range
  ]

  cluster_services_cidr = [
    "10.10.16.0/22",  #  DEV  Services Range
    "10.11.16.0/22",  #  TEST Services Range
    "10.12.16.0/22",  #  PROD Services Range
  ]
  
}
